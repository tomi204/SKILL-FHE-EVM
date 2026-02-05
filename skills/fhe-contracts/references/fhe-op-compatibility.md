# FHE Operation Compatibility (Zama vs Fhenix)

Use this reference to see which operation names are shared vs protocol-specific in the two FHE libraries.
Pair this with `fhe-ops-catalog.md` for exact signatures and `fhe-protocol-diff.md` for workflow differences.

## Shared Operation Names
- `add`
- `allow`
- `allowThis`
- `allowTransient`
- `and`
- `asEaddress`
- `asEbool`
- `asEuint128`
- `asEuint16`
- `asEuint32`
- `asEuint64`
- `asEuint8`
- `div`
- `eq`
- `gt`
- `isAllowed`
- `lt`
- `max`
- `min`
- `mul`
- `ne`
- `not`
- `or`
- `rem`
- `select`
- `shl`
- `shr`
- `sub`
- `xor`

## Zama-Only Operation Names
- `_verifySignatures`
- `asEuint256`
- `checkSignatures`
- `cleanTransientStorage`
- `delegateUserDecryption`
- `delegateUserDecryptionWithoutExpiration`
- `delegateUserDecryptions`
- `delegateUserDecryptionsWithoutExpiration`
- `fromExternal`
- `ge`
- `getDelegatedUserDecryptionExpirationDate`
- `isAccountDenied`
- `isDelegatedForUserDecryption`
- `isInitialized`
- `isPubliclyDecryptable`
- `isSenderAllowed`
- `isUserDecryptable`
- `le`
- `makePubliclyDecryptable`
- `neg`
- `randEbool`
- `randEuint128`
- `randEuint16`
- `randEuint256`
- `randEuint32`
- `randEuint64`
- `randEuint8`
- `revokeUserDecryptionDelegation`
- `revokeUserDecryptionDelegations`
- `rotl`
- `rotr`
- `setCoprocessor`
- `toBytes32`

## Fhenix-Only Operation Names
- `allowGlobal`
- `allowSender`
- `decrypt`
- `getDecryptResult`
- `getDecryptResultSafe`
- `gte`
- `lte`
- `randomEuint128`
- `randomEuint16`
- `randomEuint32`
- `randomEuint64`
- `randomEuint8`
- `rol`
- `ror`
- `square`

## Translation Guide
| Intent | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Validate encrypted calldata | `fromExternal` | `asEuint*` / `asEaddress` on `InE*` wrappers |
| Verify decrypted reserve bundle | `checkSignatures` | `decrypt` + `getDecryptResultSafe` + explicit compare |
| Make ciphertext globally decryptable | `makePubliclyDecryptable` | `allowGlobal` (different permission model) |
| Random encrypted value | `randEuint*`, `randEbool` | `randomEuint*` |
| Rotate bits | `rotl`, `rotr` | `rol`, `ror` |
| Comparisons (<=, >=) | `le`, `ge` | `lte`, `gte` |

## Refresh
```bash
awk '/library FHE/{in=1;next} in && /^}/{in=0} in && $1=="function"{n=$2; sub(/\(.*/,"",n); print n}' /Users/tomas/zama/contracts/fhevm-hardhat-template/node_modules/@fhevm/solidity/lib/FHE.sol | sort -u
awk '/library FHE/{in=1;next} in && /^}/{in=0} in && $1=="function"{n=$2; sub(/\(.*/,"",n); print n}' /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/node_modules/@fhenixprotocol/cofhe-contracts/FHE.sol | sort -u
```
