---
name: fhe-contracts
description: Procedures for running Fully Homomorphic Encryption operations with the local Zama FHEVM Hardhat template and the Fhenix CoFHE Hardhat starter. Use this when Codex must compile, test, deploy, or interact with FHE-enabled Solidity contracts, encrypt/decrypt values, or troubleshoot Hardhat tasks for either protocol.
---

# FHE Contract Ops

## Overview
This skill is the authoritative playbook for working on Fully Homomorphic Encryption (FHE) Solidity systems inside
Zama's FHEVM template and Fhenix's CoFHE starter. It encodes non-negotiable math rules, setup/teardown steps,
encryption APIs, runnable helper scripts, evaluation workflows, and debugging routines so every agent respects
ciphertext constraints while shipping features.

## Protocol Map
| Protocol | Repo | Tooling | Typical Uses |
| --- | --- | --- | --- |
| Zama FHEVM | `/Users/tomas/zama/contracts/fhevm-hardhat-template` | Node 20+, npm, `@fhevm/hardhat-plugin`, `hardhat-deploy`, FHEVM CLI | Confidential ERC20s, encrypted pools/DAO logic, FHEVM frontends |
| Fhenix CoFHE | `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter` | Node 18+, pnpm, `cofhe-hardhat-plugin`, `cofhejs`, localcofhe backend | CoFHE counter demo, encrypted DEX flows, MOCK/LOCAL/TESTNET validation |

## Skill Architecture
- `SKILL.md`: entrypoint with workflows and navigation.
- `_sections.md`: canonical outline for future expansions.
- `_template.md`: template for adding new rules or workflows.
- `references/`: deep-dive docs (rules, signatures, tokens, full ops catalog, ops inventory, evals).
- `evals/`: evaluation notes and reporting templates.
- `agents/`: agent-specific metadata (`openai.yaml`, `claude.yaml`, `codex.yaml`, `cursor.yaml`).
- `scripts/` (optional): automation helpers. The skill works fully without scripts; ignore or delete if you want doc-only usage.

## FHE Safety and Math Rules
Violating these rules either fails at compile time or leaks plaintext. Keep `references/fhe-rules.md` open for the
full rulebook and code snippets.

### Allowed Operations
- Ciphertext add/sub with identical precision/scale
- Ciphertext times plaintext (scalar) when supported by the type
- Ciphertext times ciphertext while staying within the noise/circuit-depth budget
- Comparisons/select only if the encrypted type exposes them

### Forbidden or Caution Operations
- Division/modulus on ciphertexts - decrypt to plaintext, divide, then re-encrypt only if policy allows
- Mixing ciphertexts from different contracts/precisions without re-encoding
- Branching on ciphertext values (Solidity/TS) - decrypt first or redesign the flow
- Reusing proofs/handles after any state change (proof signatures become invalid immediately)
- Logging ciphertext bytes to console or emitting them in events

### Decryption Rules
- Use approved channels only:
  - Hardhat (Zama): `await fhevm.userDecryptEuint(FhevmType.euint64, ciphertext, contract, signer)`
  - Hardhat (Fhenix): `await cofhejs.unseal(ciphertext, FheTypes.Uint32)` or plugin helpers
  - Client: FHEVM gateway decrypt requests with proofs
- Keep encryption keys per user and never commit them to git
- Proofs/deadlines should stay under ~5 minutes; fetch/decrypt immediately before sending TXs

## Signature and Proof Verification (Zama vs Fhenix)
Use `references/fhe-signatures.md` for the full details and examples.

### Zama (FHEVM)
- **Input proofs**: client/Hardhat builds `inputProof` via `fhevm.createEncryptedInput(...).encrypt()`.
  On-chain functions call `FHE.fromExternal(externalEuint, inputProof)` to validate the ciphertext.
- **Reserve proofs**: the gateway decrypts obfuscated handles and returns a `proof` string. Contracts verify
  those values with `FHE.checkSignatures(handles, abi.encode(cleartexts), proof)`.
- **Where it happens**: `contracts/EPOOL.sol` uses `checkSignatures` in `_validateLiquidityParams` and
  `_validateSwapParams`. `ERC7984.discloseEncryptedAmount` also uses `checkSignatures`.

### Fhenix (CoFHE)
- **Input signatures**: `cofhejs.encrypt` returns `{ ctHash, securityZone, utype, signature }`. These fields are
  embedded in `InEuint64` inputs and validated by the CoFHE runtime (see
  `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/scripts/test-encrypt.ts` for `TaskManager.verifyInput`).
- **Reserve verification**: contracts request decryption via `FHE.decrypt(...)` and later read results with
  `FHE.getDecryptResultSafe`. They compare the decrypted values to the caller-provided cleartext to confirm
  correctness (see `contracts/EPOOL.sol::_validateLiquidityParams` and `_validateSwapParams`).
- **Common failure**: `EPOOL: decryption not ready` or `ORA/ORB mismatch` means you must wait for decrypt results
  or re-fetch fresh values after state changes.

## Token Standards and Workflows
Use `references/fhe-tokens.md` for full deploy, transfer, and test recipes.

### Zama ERC7984 (confidential ERC20)
- Implemented in `contracts/tokens/CERC20.sol` (extends `ERC7984`).
- Deploy with `npx hardhat cerc20:deploy --name ... --symbol ... --amount ... --uri ...`.
- Encrypt transfers via `fhevm.createEncryptedInput` and call `confidentialTransfer`.
- Decrypt balances with `confidentialBalanceOf` + `fhevm.userDecryptEuint`.

### Fhenix FHERC20 (confidential ERC20)
- Implemented in `contracts/tokens/CERC20.sol` (extends `FHERC20`).
- Deploy with `npx hardhat deploy-tokens --network <net>` or `ethers.deployContract("CERC20", ...)`.
- Encrypt transfers via `cofhejs.encrypt` and call `confidentialTransfer`/`confidentialTransferFrom`.
- Decrypt balances with `cofhejs.unseal` or mock helpers in tests.

## Setup and Environment Checklists
### Zama FHEVM
1. `cd /Users/tomas/zama/contracts/fhevm-hardhat-template && npm install`
2. `npx hardhat vars set MNEMONIC`, `INFURA_API_KEY`, optional `ETHERSCAN_API_KEY`
3. Start a persistent chain (`npx hardhat node` or `anvil`) before using CLI tasks
4. Confirm Node >= 20 and that the FHEVM CLI binaries are accessible (plugin handles init)

### Fhenix CoFHE
1. `cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter && pnpm install`
2. `npx hardhat vars set MNEMONIC`; export RPC URLs (`SEPOLIA_RPC_URL`, `ARBITRUM_SEPOLIA_RPC_URL`) as needed
3. Choose environment:
   - MOCK: default for unit tests
   - LOCAL: `pnpm localcofhe:start`, `pnpm localcofhe:faucet`
   - TESTNET: provide RPC + funded account
4. Confirm Node >= 18 and `pnpm` in PATH

## Operations Workflow
1. **Install + configure** using the checklists above.
2. **Start backend**: Hardhat node/anvil for FHEVM, or localcofhe for Fhenix LOCAL flows.
3. **Initialize encryption runtime**:
   - FHEVM Hardhat: `const input = await fhevm.createEncryptedInput(contract, signer.address); input.add64(value);`
   - CoFHE Hardhat: `await cofhejs_initializeWithHardhatSigner(signer); const [cipher] = await cofhejs.encrypt(...);`
   - Client: follow `references/fhevm-client.md` for key registration, obfuscated reserve decrypts, and proof packaging.
4. **Authorize operators/contexts**:
   - Run `cerc20:set-operator` (or task helper) before pools move tokens.
   - Ensure operator expiries extend past the transaction deadline but remain finite.
5. **Execute encrypted tasks**:
   - FHEVM: `task:pool_add_liquidity`, `task:pool_swap`, `pool:*`, `cerc20:*`, `full-deploy`, `airdrop:*`.
   - CoFHE: `deploy-counter`, `increment-counter`, `deploy-tokens`, `deploy-factory`, `create-pool`, `bootstrap-pool`, `swap`, `full-flow`.
   - Always pass explicit network flags (`--network localhost`, `--network arb-sepolia`, etc.).
6. **Decrypt + verify outputs**:
   - Zama: `await fhevm.userDecryptEuint(...)` or client gateway decrypt
   - Fhenix: `await cofhejs.unseal(...)` or plugin assertions (`expectResultValue`, `mock_expectPlaintext`)
7. **Persist artifacts**: update `deployments/<network>.json`, `deployments-summary.json`, or Ignition outputs so downstream consumers use the latest addresses.

## FHE Operations Inventory
Use `references/fhe-ops-catalog.md` for the complete library-level function list (all available FHE operations),
and `references/fhe-ops-inventory.md` for the operations actually used in the two repos. Update the inventory
whenever you add new FHE operations by rerunning:
- `rg -n "FHE\." /Users/tomas/zama/contracts/fhevm-hardhat-template/contracts`
- `rg -n "FHE\." /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts`

## Testing and Evaluation
Use `references/fhe-evals.md` for the full, manual evaluation checklist and reporting template. No skill scripts
are required; all commands are listed there.

### Zama FHEVM
- `npm run compile` (contract-sizer on) and `npm run test` for unit coverage.
- `npx hardhat test --network localhost` whenever the test needs real CLI encrypt/decrypt calls.
- Toggle env flags:
  - `CONTRACT_SIZER_RUN=false` or `CONTRACT_SIZER_STRICT=false` for speed
  - `REPORT_GAS=true` to capture gas profiles on encrypted ops
- In tests: encrypt inputs -> set operators -> call contract -> decrypt results -> assert invariants (reserves, balances, votes).

### Fhenix CoFHE
- `pnpm test` (MOCK mode) for CI-safe runs gated by `isPermittedCofheEnvironment(hre, 'MOCK')`.
- `pnpm test:localcofhe` after `pnpm localcofhe:start`, using `localcofheFundWalletIfNeeded` for signer funding.
- Integration recipe: initialize cofhejs signer -> encrypt inputs using `Encryptable.uint*` helpers -> invoke task -> `cofhejs.unseal` outputs.
- Use plugin helpers (`expectResultSuccess`, `expectResultValue`, `mock_expectPlaintext`) to assert ciphertext correctness without leaking data.

## Command Reference
| Action | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Install deps | `npm install` | `pnpm install` |
| Compile | `npm run compile` | `pnpm compile` |
| Run tests | `npm run test` / `npx hardhat test --network localhost` | `pnpm test`, `pnpm test:localcofhe` |
| Start backend | `npx hardhat node` or `anvil` | `pnpm localcofhe:start` |
| Deploy full flow | `npx hardhat run scripts/deploy/index.ts --network <net>` | `npx hardhat full-flow --network <net>` |
| Deploy token(s) | `npx hardhat cerc20:deploy --name ... --symbol ... --amount ...` | `npx hardhat deploy-tokens --network <net>` |
| Swap via CLI | `npx hardhat task:pool_swap --pool <pair> --amount 100 --network sepolia` | `npx hardhat swap --network arb-sepolia` |
| Balance decrypt | `npx hardhat task:pool_balances --token TOKEN --network localhost` | `cofhejs.unseal(handle, FheTypes.Uint64)` |
| Encrypt in tests | `await fhevm.createEncryptedInput(...)` | `await cofhejs.encrypt(...)` |
| Decrypt in tests | `await fhevm.userDecryptEuint(...)` | `await cofhejs.unseal(...)` |
| Token tests | `npx hardhat test test/CERC20.ts --network localhost` | `pnpm test -- test/CERC20.test.ts` |

## Troubleshooting and Recovery
- **Ciphertext division attempts** -> decrypt to plaintext, compute, optionally re-encrypt.
- **Proof/handle mismatch** -> fetch new obfuscated reserves, decrypt again, regenerate encrypted inputs.
- **Operator expired** -> rerun `cerc20:set-operator` (Zama) or the equivalent CoFHE helper with a new timestamp.
- **DeadlineExpired revert** -> recalc deadline (now + <= 300s) and resubmit quickly.
- **Local backend flakiness** -> ensure the Hardhat node/localcofhe process is running; restart if CLI init fails.
- **Noise budget exceeded** -> reduce ciphertext multiplications, split work into smaller transactions, or decrypt sooner.

## Reference Navigator
- `references/fhe-rules.md` - canonical list of allowed/forbidden ciphertext operations with do/dont snippets
- `references/fhe-signatures.md` - proof and signature verification steps for Zama vs Fhenix
- `references/fhe-tokens.md` - encrypted token standards, deploy/test recipes, encrypt/decrypt guidance
- `references/fhe-ops-catalog.md` - complete library-level function list (all available FHE operations)
- `references/fhe-ops-inventory.md` - inventory of FHE calls used in both repos (kept in sync with code)
- `references/fhe-evals.md` - evaluation checklist and manual reporting template
- `references/fhevm-hardhat.md` - Hardhat commands, deployment orchestrator, encrypted task breakdown for Zama FHEVM
- `references/fhevm-client.md` - client-side encryption/decryption workflow, operator setup, proof handling, errors
- `references/fhenix-cofhe.md` - pnpm scripts, cofhejs usage, plugin utilities, LOCAL/MOCK/TESTNET guidance
