# Zama vs Fhenix FHE Differences

Use this reference when comparing how the same concept is implemented in the two FHE stacks.
Pair this with `fhe-library-map.md` (who imports which library), `fhe-ops-catalog.md` (full signatures),
and `fhe-op-compatibility.md` (shared/unique op names).

## Library and Import Boundary
- Zama contracts import `@fhevm/solidity/lib/FHE.sol`.
- Fhenix contracts import `@fhenixprotocol/cofhe-contracts/FHE.sol`.
- File-level usage map: see `fhe-library-map.md`.

## Input Types and Validation
| Concern | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Encrypted calldata wrapper | `externalEuint*` / `externalEaddress` | `InEuint*` / `InEaddress` |
| Validation call | `FHE.fromExternal(input, inputProof)` | `FHE.asEuint*(input)` / `FHE.asEaddress(input)` |
| Validation artifact source | `fhevm.createEncryptedInput(...).encrypt()` returns `handles + inputProof` | `cofhejs.encrypt(...)` returns `{ctHash, securityZone, utype, signature}` |

## Decryption and Proof Model
| Concern | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Decrypt model | Gateway decrypt + proof bundle | On-chain decrypt task + later result read |
| Integrity check | `FHE.checkSignatures(handles, abi.encode(cleartexts), proof)` | `FHE.getDecryptResultSafe(...)` compared against caller-provided plaintexts |
| Typical failure | stale `proof` / handle mismatch | decrypt not ready, stale reserve plaintext mismatch |

## Permission and Access API Differences
| Category | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Shared | `allow`, `allowThis`, `allowTransient` | `allow`, `allowThis`, `allowTransient` |
| Zama-only highlights | `makePubliclyDecryptable`, `checkSignatures`, `fromExternal`, `toBytes32` | n/a |
| Fhenix-only highlights | `allowGlobal`, `allowSender`, `decrypt`, `getDecryptResult`, `getDecryptResultSafe`, `square` | n/a |

## Arithmetic and Boolean Naming Differences
| Concept | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Randomness prefix | `randEuint*`, `randEbool` | `randomEuint*` |
| Rotate left/right | `rotl`, `rotr` | `rol`, `ror` |
| Comparison aliases | `le`, `ge` | `lte`, `gte` |

## Token Standard Layer
| Token track | Zama | Fhenix |
| --- | --- | --- |
| Encrypted fungible base | `ERC7984` (OpenZeppelin confidential) | `FHERC20` (fhenix-confidential-contracts) |
| Local token implementation | `<ZAMA_REPO>/contracts/tokens/CERC20.sol` | `<FHENIX_REPO>/contracts/tokens/CERC20.sol` |

## Testing Model Differences
| Concern | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Canonical regression command | `npm run test` | `pnpm test` |
| Local integration command | `npx hardhat test --network localhost` | `pnpm localcofhe:test` |
| Test gating pattern | integration-style tests often run against localhost node | many suites call `skipIfNotMock(this)` and are MOCK-only by default |
| Local backend lifecycle in repo | explicit node process (`npx hardhat node`) | localcofhe backend lifecycle is external in current repo scripts |

## Which Contracts Use Which
- Zama import references: `fhe-library-map.md` -> `Contract Imports (Zama FHEVM)`.
- Fhenix import references: `fhe-library-map.md` -> `Contract Imports (Fhenix CoFHE)`.
- Per-operation usage references (all `FHE.*` calls): `fhe-ops-usage-map.md`.
