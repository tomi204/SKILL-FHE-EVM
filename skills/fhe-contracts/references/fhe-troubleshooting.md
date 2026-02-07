# FHE Troubleshooting and Recovery

Use this reference when an FHE flow fails at runtime, proofs mismatch, or decrypt results are stale.
It applies to both Zama FHEVM and Fhenix CoFHE.

## Common Failures and Fixes

### Ciphertext division attempted
- **Symptom**: Compile error or unexpected revert around `div` / `/` with encrypted types.
- **Fix**: Decrypt to plaintext, divide off-chain or in plaintext, and re-encrypt only if policy allows.

### Proof or signature mismatch (Zama)
- **Symptom**: Revert on `FHE.checkSignatures` or `FHE.fromExternal`.
- **Fix**: Re-fetch obfuscated handles, request a new gateway decrypt, and regenerate encrypted inputs.
- **Root cause**: Proofs are state-bound and expire after any state change.

### Input signature invalid (Fhenix)
- **Symptom**: Revert when `FHE.asEuint*` validates `InEuint*` inputs.
- **Fix**: Reinitialize cofhejs, recreate permits, and re-encrypt inputs.
- **Debug**: Use `scripts/test-encrypt.ts` to call `TaskManager.verifyInput` directly.

### Decryption not ready (Fhenix)
- **Symptom**: `EPOOL: decryption not ready` or `getDecryptResultSafe` returns `ready=false`.
- **Fix**: Wait for the decrypt result or retry after the backend processes the decrypt task.

### Reserve mismatch (Fhenix)
- **Symptom**: `ORA/ORB/OL mismatch` during pool validation.
- **Fix**: Refresh obfuscated reserves, wait for decrypt results, and resubmit with fresh plaintexts.

### Operator expired or missing
- **Symptom**: Transfers or pool ops revert due to missing permissions.
- **Fix**: Run `cerc20:set-operator` (Zama) or the equivalent CoFHE helper with a new expiry timestamp.

### Local backend not running
- **Symptom**: CLI tasks fail to initialize or encryption calls hang.
- **Fix**: Ensure `npx hardhat node` (Zama) or a reachable localcofhe backend (Fhenix) is running; validate with `pnpm localcofhe:test`.

### Noise budget exceeded
- **Symptom**: Encrypted operations fail after deep multiplication chains.
- **Fix**: Reduce ciphertext depth, split computation into multiple transactions, or decrypt earlier.

## Rapid Diagnostic Checklist
1. Confirm the correct backend is running (Hardhat node vs localcofhe).
2. Verify encrypted inputs were created immediately before the transaction.
3. Check operator approvals and expiries.
4. Recompute proofs / decrypt results after any state change.
5. Inspect `references/fhe-signatures.md` for protocol-specific validation rules.
