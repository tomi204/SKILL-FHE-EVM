# Proof and Signature Verification (Zama vs Fhenix)

Use this reference when an agent needs to explain or debug proof validation, input signatures, or
"checkSignatures" failures. It documents how verification works in each protocol and where to look in code.

## Zama FHEVM

### Input Proofs (encrypted calldata)
- Created by `fhevm.createEncryptedInput(contract, user).encrypt()`.
- Returned as `encrypted.handles` and `encrypted.inputProof`.
- On-chain validation happens when contracts call:
  - `FHE.fromExternal(externalEuint, inputProof)`

Example (Zama input proof):
```solidity
euint64 amount = FHE.fromExternal(amountExt, inputProof);
```

**Where to look**
- `contracts/EPOOL.sol` uses `FHE.fromExternal` for liquidity and swap inputs.
- `contracts/EPoolFactory.sol` uses `FHE.fromExternal` for obfuscation parameters.

### Reserve Proofs (decrypted handles)
- Client fetches handles with `pool.obfuscatedStates()`.
- Client calls the FHEVM gateway to decrypt: `instance.gateway.decrypt(handles)`.
- Gateway returns plaintext values and `proof` (a Zama signature).
- On-chain verification uses:
  - `FHE.checkSignatures(handles, abi.encode(cleartexts), proof)`

Example (Zama reserve proof):
```solidity
FHE.checkSignatures(handles, abi.encode(ora, orb, ol), proof);
```

**Where to look**
- `contracts/EPOOL.sol`:
  - `_validateLiquidityParams` verifies ORA/ORB/OL using `checkSignatures`.
  - `_validateSwapParams` verifies ORA/ORB using `checkSignatures`.
- `contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol`:
  - `discloseEncryptedAmount` uses `checkSignatures` for public disclosure.

**Common failure**
- If a tx reverts with `checkSignatures`, the proof is stale or mismatched. Re-fetch obfuscated handles and
  request a fresh gateway decrypt before retrying.

## Fhenix CoFHE

### Input Signatures (encrypted calldata)
- `cofhejs.encrypt` returns a struct for each input:
  - `{ ctHash, securityZone, utype, signature }`
- These fields are passed to contracts as `InEuint64` / `InEuint128` values.
- On-chain validation happens when contracts call:
  - `FHE.asEuint64(input)` / `FHE.asEuint128(input)` (the function checks `utype` and calls `Impl.verifyInput`).

Example (Fhenix on-chain verify helper):
```ts
await taskManager.verifyInput({ ctHash, securityZone, utype, signature }, sender);
```

**Debugging hook**
- `<FHENIX_REPO>/scripts/test-encrypt.ts` calls
  `TaskManager.verifyInput(...)` for on-chain validation of the signature.
- `<FHENIX_REPO>/scripts/debug-bootstrap-detailed.ts` shows how to pass
  `ctHash`, `securityZone`, `utype`, and `signature` to `confidentialTransferFrom` and pool bootstrap calls.

### Reserve Verification (on-chain decrypt results)
- Contracts request decrypts via `FHE.decrypt(ciphertext)` after each state update.
- Later, they read results with `FHE.getDecryptResultSafe(ciphertext)`.
- Callers must pass plaintext reserves to the pool; contracts compare them against decrypted results.

**Where to look**
- `contracts/EPOOL.sol`:
  - `_updateObfuscatedState` calls `FHE.decrypt` on obfuscated reserves.
  - `_validateLiquidityParams` and `_validateSwapParams` call `FHE.getDecryptResultSafe` and compare.

**Common failures**
- `EPOOL: decryption not ready` means the decrypt result is not yet available.
- `ORA/ORB/OL mismatch` means the caller passed stale or incorrect plaintext; refresh data and retry.

## Quick Diagnostic Checklist
- Zama: confirm `inputProof` matches current ciphertext handles and `proof` from the gateway is fresh.
- Fhenix: confirm cofhejs is initialized, permit is valid, and the returned `signature` is used in the `InEuint64` input.
- In both: never reuse proofs across state changes; fetch and decrypt immediately before tx submission.
