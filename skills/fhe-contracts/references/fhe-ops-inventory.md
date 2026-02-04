# FHE Operations Inventory

This file enumerates the FHE calls currently used in the two local repos. It is **not** the full protocol
API; for the complete list of available operations see `references/fhe-ops-catalog.md`.
Update this inventory whenever you add new FHE operations by re-running the ripgrep commands listed below.

## Zama FHEVM (fhevm-hardhat-template)
**Arithmetic and transforms**
- `FHE.add`, `FHE.sub`, `FHE.mul`, `FHE.div`, `FHE.shr`, `FHE.min`

**Comparisons and selection**
- `FHE.le`, `FHE.ge`, `FHE.and`, `FHE.select`

**Type conversions**
- `FHE.asEuint64`, `FHE.asEuint128`, `FHE.asEbool`, `FHE.asEaddress`

**Input and handles**
- `FHE.fromExternal` (validates encrypted inputs with proof)
- `FHE.toBytes32` (convert handle to bytes32)

**Permissions and access**
- `FHE.allow`, `FHE.allowThis`, `FHE.allowTransient`
- `FHE.isAllowed`, `FHE.isInitialized`
- `FHE.makePubliclyDecryptable`

**Randomness and misc**
- `FHE.randEuint16` (obfuscation factor seed)

**Proof checks**
- `FHE.checkSignatures` (validates reserve proofs and disclosed amounts)

## Fhenix CoFHE (cofhe-hardhat-starter)
**Arithmetic and transforms**
- `FHE.add`, `FHE.sub`, `FHE.mul`, `FHE.div`, `FHE.shr`, `FHE.min`

**Comparisons and selection**
- `FHE.gt`, `FHE.lt`, `FHE.not`, `FHE.and`, `FHE.select`

**Type conversions**
- `FHE.asEuint64`, `FHE.asEuint128`

**Input and handles**
- `FHE.asEuint64` applied to `InEuint64` calldata inputs

**Permissions and access**
- `FHE.allow`, `FHE.allowThis`, `FHE.allowTransient`, `FHE.allowGlobal`

**Decryption pipeline**
- `FHE.decrypt` (request on-chain decryption)
- `FHE.getDecryptResultSafe` (read decrypted values + readiness)

**Randomness and misc**
- `FHE.randomEuint16`, `FHE.randomEuint64` (used in `TestFHE`)

## How to Refresh This Inventory
Run the following, then update this file with any new operations:
```bash
rg -n "FHE\." /Users/tomas/zama/contracts/fhevm-hardhat-template/contracts
rg -n "FHE\." /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts
```
