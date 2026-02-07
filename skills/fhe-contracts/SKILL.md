---
name: fhe-contracts
description: End-to-end guidance for Fully Homomorphic Encryption smart contracts in Zama FHEVM and Fhenix CoFHE, including ciphertext rules, proof/signature validation, encrypted ERC20 standards, deploy/test workflows, and troubleshooting. Use when working in /Users/tomas/zama/contracts/fhevm-hardhat-template or /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter, or when reasoning about FHE ops, encryption/decryption, or proofs.
---

# FHE Contract Ops

Use this skill to ship safe FHE Solidity and Hardhat workflows across Zama FHEVM and Fhenix CoFHE. The
SKILL.md is a concise index; detailed procedures live in the references.

## When to Use
- You are working inside `/Users/tomas/zama/contracts/fhevm-hardhat-template` or `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter`.
- You must encrypt inputs, decrypt outputs, or validate proofs/signatures for FHE flows.
- You are deploying or testing confidential ERC20 tokens (ERC7984 / FHERC20) or pool logic.
- You need to confirm which FHE operations exist, how they differ by protocol, or where they appear in code.

## Quick Start (choose a stack)
### Zama FHEVM
1. `cd /Users/tomas/zama/contracts/fhevm-hardhat-template && npm install`
2. `npx hardhat node` (or `anvil`) for a persistent RPC
3. `npx hardhat run scripts/deploy/index.ts --network localhost`
4. Read `references/fhevm-hardhat.md` and `references/fhe-signatures.md` before editing FHE logic.

### Fhenix CoFHE
1. `cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter && pnpm install`
2. `pnpm test` for MOCK baseline (most suites are MOCK-gated)
3. `pnpm localcofhe:test` for LOCAL integration (requires an already-running localcofhe backend)
4. `npx hardhat full-flow --network localcofhe` for end-to-end LOCAL flow
5. Read `references/fhenix-cofhe.md` and `references/fhe-signatures.md` before editing FHE logic.

## Protocol Map
| Protocol | Repo | Tooling | Notes |
| --- | --- | --- | --- |
| Zama FHEVM | `/Users/tomas/zama/contracts/fhevm-hardhat-template` | Node 20+, npm, `@fhevm/hardhat-plugin` | Inputs validated via `FHE.fromExternal` + gateway proofs (`FHE.checkSignatures`). |
| Fhenix CoFHE | `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter` | Node 18+, pnpm, `cofhe-hardhat-plugin` | Inputs validated via `FHE.asEuint*` on `InEuint*`; decrypt via `FHE.decrypt` + `getDecryptResultSafe`. |

## Execution Workflow for Agents
1. Identify the protocol first (Zama or Fhenix).
2. Load only the matching protocol reference (`fhevm-hardhat.md` or `fhenix-cofhe.md`).
3. If request touches proofs/signatures, load `fhe-signatures.md` and `fhe-protocol-diff.md`.
4. If request touches token flows, load `fhe-tokens.md`.
5. If request asks "all ops" or "where used", load `fhe-ops-catalog.md`, `fhe-ops-usage-map.md`, and `fhe-library-map.md`.
6. If request needs first-party-only coverage (excluding vendored contracts), load `fhe-ops-usage-first-party.md`.
7. If request needs API compatibility/diff by operation name, load `fhe-op-compatibility.md`.
8. Run tests with `fhe-tests.md`, then evaluate/report with `fhe-evals.md`.
9. Use `fhe-troubleshooting.md` only when failures appear.

## Non-Negotiable FHE Rules (summary)
- Never divide ciphertext by ciphertext. Decrypt, divide, re-encrypt only if policy allows.
- Never branch on ciphertext values in Solidity/TS; use plaintext or redesign.
- Proofs/signatures are state-bound and expire after any state change. Re-fetch and re-encrypt inputs before tx.
- Do not log ciphertext bytes or emit them in events unless explicitly required.
- Always set operator approvals before contracts move encrypted tokens.

## Reference Index (read as needed)
### Core rules and proofs
- `references/fhe-rules.md` - allowed/forbidden operations with examples
- `references/fhe-signatures.md` - Zama `checkSignatures` vs Fhenix `asEuint*` + decrypt flow
- `references/fhe-protocol-diff.md` - direct protocol-by-protocol FHE API and flow differences

### Protocol workflows
- `references/fhevm-hardhat.md` - Zama Hardhat commands, deployments, tasks, client hooks
- `references/fhevm-client.md` - Zama client encryption/decryption and proof packaging
- `references/fhenix-cofhe.md` - Fhenix tasks, cofhejs usage, LOCAL/MOCK/TESTNET guidance

### Token standards
- `references/fhe-tokens.md` - ERC7984 vs FHERC20 deploy/transfer/decrypt/test recipes

### FHE operations coverage (all ops + where used)
- `references/fhe-ops-catalog.md` - complete library-level function list for both protocols
- `references/fhe-ops-usage-map.md` - file/line references for every `FHE.*` call in both contract trees
- `references/fhe-ops-usage-first-party.md` - file/line references for first-party contracts only
- `references/fhe-ops-inventory.md` - quick inventory of ops actually used in repos
- `references/fhe-library-map.md` - which contracts import which FHE library (Zama vs Fhenix)
- `references/fhe-op-compatibility.md` - shared vs protocol-specific operation names and translation guide

### Testing and evaluation
- `references/fhe-tests.md` - canonical test commands for Zama and Fhenix (no skill scripts)
- `references/fhe-evals.md` - manual evaluation checklist and reporting template

### Troubleshooting
- `references/fhe-troubleshooting.md` - error recovery for proof, decryption, and operator failures
