# Encrypted Token Standards (Zama ERC7984 vs Fhenix FHERC20)

Use this reference when you need to deploy, test, or explain encrypted ERC20-style tokens in either stack.
It focuses on how to mint, transfer, encrypt inputs, and decrypt balances safely.

## Zama FHEVM - ERC7984 (OpenZeppelin confidential)
**Standard**: `ERC7984` from OpenZeppelin Confidential Contracts (`openzeppelin-confidential-contracts`).
**Local implementation**: `contracts/tokens/CERC20.sol` extends `ERC7984` and `ZamaEthereumConfig`.

### Deploy
- Hardhat task:
  ```bash
  npx hardhat cerc20:deploy --name "Confidential Token" --symbol CTKN --amount 1000000 --uri ""
  ```
- Manual deploy (tests/scripts):
  ```ts
  const token = await ethers.deployContract("CERC20", [owner.address, amount, name, symbol, uri])
  ```

### Encrypt + Transfer
```ts
const enc = await fhevm.createEncryptedInput(tokenAddr, sender.address)
  .add64(amount)
  .encrypt()
await token["confidentialTransfer(address,bytes32,bytes)"](to, enc.handles[0], enc.inputProof)
```
- `FHE.fromExternal` on-chain validates the `inputProof`.
- Set operators before pool contracts move tokens (task: `cerc20:set-operator`).

### Decrypt Balance
```ts
const handle = await token.confidentialBalanceOf(user)
const clear = await fhevm.userDecryptEuint(FhevmType.euint64, handle, tokenAddr, signer)
```

### Tests
- `test/CERC20.ts` shows encrypt -> transfer -> decrypt balance assertions.
- `test/EPOOL/_epool.helpers.ts` includes `decryptBalance` helper.
- Run with a persistent node when CLI encryption is needed:
  ```bash
  npx hardhat test --network localhost
  ```
- Token-only run:
  ```bash
  npx hardhat test test/CERC20.ts --network localhost
  ```

## Fhenix CoFHE - FHERC20 (Fhenix confidential)
**Standard**: `FHERC20` from `fhenix-confidential-contracts` (supports indicator balances and ticks).
**Local implementation**: `contracts/tokens/CERC20.sol` extends `FHERC20`.

### Deploy
- Hardhat task (batch deploy):
  ```bash
  npx hardhat deploy-tokens --network localcofhe
  ```
- Manual deploy:
  ```ts
  const token = await ethers.deployContract("CERC20", [owner.address, amount, name, symbol, decimals])
  ```

### Encrypt + Transfer
```ts
const encResult = await cofhejs.encrypt([Encryptable.uint64(amount)] as const)
const [enc] = encResult.data
await token["confidentialTransfer(address,(uint256,uint8,uint8,bytes))"](to, enc)
```
- For `confidentialTransferFrom`, pass the same struct as the amount and include `from`.
- The CoFHE runtime validates `ctHash`, `securityZone`, `utype`, `signature` automatically.
- Use `confidentialApprove` / allowance flows before calling `confidentialTransferFrom`.

### Decrypt Balance
- Mock environment (tests):
  ```ts
  const handle = await token.confidentialBalanceOf(user)
  const clear = await hre.cofhe.mocks.getPlaintext(handle)
  ```
- Real environments:
  ```ts
  const clear = await cofhejs.unseal(handle, FheTypes.Uint64)
  ```

### Tests
- `test/CERC20.test.ts` uses helpers from `test/helpers/fhenix.ts`:
  - `initializeCofhe`, `encryptU64`, `decryptBalance`, `expectFHERC20BalancesChange`
- Tests are MOCK-only by default; `skipIfNotMock(this)` guards suites.
- Token-only run:
  ```bash
  pnpm test -- test/CERC20.test.ts
  ```

## Common Pitfalls
- Do not divide ciphertexts for ERC7984 or FHERC20; decrypt first.
- Do not reuse proofs after state changes; re-encrypt inputs.
- Always set operators before pools move tokens.
