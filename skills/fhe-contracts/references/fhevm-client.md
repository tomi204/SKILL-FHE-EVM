# FHEVM Client Integration Highlights

Use this when wiring a frontend, script, or service to Zama FHEVM contracts without re-reading the
entire `docs/FRONTEND_INTEGRATION.md`. Everything here focuses on FHE operations: encrypting calldata,
decrypting reserves, managing operators, and handling proof signatures.

## Core Concepts
- CERC20 tokens implement encrypted balances; all on-chain math uses 6 decimals.
- EPOOL contracts keep reserves encrypted on-chain. The public chain exposes obfuscated handles that must be
  decrypted through the FHEVM gateway before they can be used in proofs.
- Proof pipeline: `obfuscatedStates()` -> gateway decrypt -> plaintext + proof -> pass encrypted inputs +
  decrypted values back to the contract.
- Operator requirement: each token (and the LP token) must authorize the pool with `setOperator(address,uint48)`
  before swaps or liquidity moves.

## Mandatory Steps
1. Initialize SDK
   ```ts
   import { createInstance } from 'fhevmjs'
   const instance = await createInstance({ networkUrl, gatewayUrl, aclAddress, kmsVerifierAddress })
   ```
2. Register keys: for every wallet address, generate a keypair and sign the EIP-712 payload returned by
   `instance.createEIP712(...)`, then call `instance.setKeypair(address, { publicKey, privateKey, signature })`.
3. Decrypt reserves:
   ```ts
   const { obfuscatedReserveA, obfuscatedReserveB, lpSupply } = await pool.obfuscatedStates()
   const { values, proof } = await instance.gateway.decrypt([
     obfuscatedReserveA,
     obfuscatedReserveB,
     lpSupply,
   ])
   ```
4. Encrypt inputs:
   ```ts
   const input = instance.createEncryptedInput(poolAddress, userAddress)
   input.add64(amountIn)
   input.add64(minAmountOut)
   const encrypted = input.encrypt()
   ```
5. Deadlines: translate UX deadlines into unix timestamps (e.g. `BigInt(Math.floor(Date.now()/1000) + 300)`),
   because proofs become stale once state changes.

## Proof Signatures (Zama)
- Encrypted inputs produce `encrypted.inputProof`, which is validated on-chain by
  `FHE.fromExternal(externalEuint, inputProof)`.
- Reserve proofs from the gateway are validated on-chain by
  `FHE.checkSignatures(handles, abi.encode(cleartexts), proof)`.
- If transactions revert with `checkSignatures`, re-fetch obfuscated reserves and request a fresh gateway decrypt.

## Swap Skeleton
```ts
await setPoolAsOperator(inputToken, poolAddress, signer)
const reserves = await getObfuscatedReserves(poolAddress, provider)
const decrypted = await decryptReserves(reserves)
const encryptedInputs = await createSwapEncryptedInputs(poolAddress, user, amountIn, minAmountOut)
const deadline = BigInt(Math.floor(Date.now() / 1000) + 300)
await pool.atomicSwapAForB(
  encryptedInputs.amountInHandle,
  encryptedInputs.minAmountOutHandle,
  encryptedInputs.inputProof,
  recipient,
  decrypted.reserveA,
  decrypted.reserveB,
  decrypted.proof,
  deadline,
)
```
Switch to `atomicSwapBForA` when the trade direction flips.

## Liquidity Add/Remove
- Call `setOperator` for both assets (and the LP token) before interacting.
- Use `decryptReserves(..., includeLpSupply=true)` to pass `reserveA`, `reserveB`, and `lpSupply` plus the proof.
- Add liquidity via `pool.contributeLiquidity` with the two encrypted amounts plus proofs.
- Remove liquidity by encrypting `sharesToRemove` and supplying decrypted reserves/LP supply.
- Withdrawal fee defaults to 0.05 percent; display it in UI messaging.

## Error Handling Cheatsheet
| Error | Fix |
| --- | --- |
| `reserves-not-initialized` | Wait for pools to bootstrap or run the liquidity task first. |
| `already-initialized` | Skip bootstrap and only add liquidity. |
| `InvalidRecipient` | Provide a non-zero address. |
| `DeadlineExpired` | Recompute deadline and re-send. |
| `checkSignatures` failure | Re-fetch obfuscated reserves and decrypt again (proof was stale). |
| Missing operator | Call `setOperator` with a future `until` timestamp. |

## Helper Snippets
- `toTokenAmount` / `fromTokenAmount`: convert between numbers and bigint (6 decimals).
- `estimateSwapOutput`: use obfuscated reserve bounds to estimate outcomes locally.
- `estimateLPTokens` and `estimateRemoveLiquidityOutput`: preview mint/burn amounts for UI confirmations.
- `safeSwap`: wrap `executeSwap` in try/catch, detect proof errors, and retry with fresh data.

## Addresses and Configuration
Current sample addresses live in `deployments/<network>.json` (and are summarized in `deployments-summary.json`).
Never hardcode stale constants in client code; read the latest file or inject addresses through env configs.
