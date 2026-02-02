# FHE Operations Rulebook

Use this when auditing whether an operation is mathematically/legal within the deployed FHE stacks.
The rules apply to both Zama FHEVM and Fhenix CoFHE unless noted otherwise.

## Operator Table
| Operation | Ciphertext and Ciphertext | Ciphertext and Plaintext | Notes |
| --- | --- | --- | --- |
| Addition/Subtraction | Yes | Yes | Keep matching bit widths/precision; rebalance after chained ops if noise grows. |
| Multiplication | Caution | Yes | Ciphertext times ciphertext allowed only while staying within circuit depth limits. |
| Division/Modulus | No | Caution | Never divide ciphertext by ciphertext. For plaintext divisors, decrypt then divide, re-encrypt if policy allows. |
| Comparison/Branching | No | No | Do not branch on ciphertext inside Solidity/TypeScript. Obtain plaintext or redesign logic. |
| Bitwise ops | Caution | Caution | Support varies by library; avoid unless documented for the specific encrypted type. |
| Random access | No | No | You cannot index into ciphertext arrays; decrypt first. |

## Mandatory Guards
1. **Bind ciphertext to contract/user** - `fhevm.createEncryptedInput` ties handles to `(contract, user)`.
   Re-encrypt when forwarding to another contract.
2. **Expiry windows** - proofs from gateway/local decrypt calls expire once reserves or ciphertext state changes.
   Always fetch/decrypt immediately before submitting a transaction.
3. **Operator approvals** - run `setOperator` for every token or LP token you expect to move; include a finite
   expiry timestamp.
4. **Key management** - never commit generated keypairs; store them in wallet/local storage and rehydrate via
   signed EIP-712 payloads.
5. **Noise budget awareness** - keep tracked multiplications low. If in doubt, decrypt earlier or split workflows.

## Examples
### Valid pattern
```ts
const input = await fhevm.createEncryptedInput(pool, user)
input.add64(BigInt(amountA))
input.add64(BigInt(amountB))
const encrypted = await input.encrypt()
await pool.contributeLiquidity(
  encrypted.handles[0],
  encrypted.handles[1],
  encrypted.inputProof,
  decrypted.reserveA,
  decrypted.reserveB,
  decrypted.lpSupply,
  decrypted.proof,
  deadline,
)
```
- Encrypts before sending on-chain
- Supplies decrypted reserve proof
- No ciphertext division or branching

### Invalid pattern
```ts
// DO NOT divide ciphertexts
const ratio = encryptedAmountA / encryptedAmountB
await pool.swapWithRatio(ratio)
```
Fix by decrypting each value (if authorized) or redesigning to avoid division entirely.

### CoFHE plaintext leak guard
```ts
const [cipher] = await cofhejs.encrypt(() => {}, [Encryptable.uint32(42n)])
// DO NOT log ciphertexts
console.log(cipher)
```
Treat ciphertext as sensitive bytes and avoid console logging.
