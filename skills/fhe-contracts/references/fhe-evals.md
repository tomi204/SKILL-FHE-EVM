# FHE Evaluation Playbook

Use this reference when verifying that encrypted contracts compile, tests cover the right branches, and
runtime invariants hold. Pair this with `scripts/run_fhe_checks.sh` for automation.

## Pre-flight Checklist
1. Node 20+ installed for FHEVM, Node 18+ + pnpm for CoFHE.
2. Hardhat vars configured (`MNEMONIC`, `INFURA_API_KEY`, optional explorers).
3. Local daemons running (Hardhat node or localcofhe) when executing integration tests.
4. Fresh deployments artifacts available (`deployments/<network>.json`).

## Automated Runs
```bash
# Run everything
skills/fhe-contracts/scripts/run_fhe_checks.sh

# Only FHEVM
skills/fhe-contracts/scripts/run_fhe_checks.sh --skip-cofhe

# Only CoFHE
skills/fhe-contracts/scripts/run_fhe_checks.sh --skip-fhevm
```
Each block installs dependencies if `node_modules` is missing, compiles, and runs the repo's default test suite.

## Manual Evaluation Matrix
| Stage | Zama FHEVM | Fhenix CoFHE |
| --- | --- | --- |
| Lint/Type check | `npm run lint` (if available), `npx tsc --noEmit` | `pnpm lint`, `pnpm tsc --noEmit` |
| Compile | `npm run compile` (contract-sizer on) | `pnpm compile` |
| Unit tests | `npm run test` | `pnpm test` (MOCK) |
| Integration | `npx hardhat test --network localhost`, CLI tasks | `pnpm test:localcofhe`, task scripts |
| Deployment smoke | `npx hardhat run scripts/deploy/index.ts --network localhost` + `scripts/deploy/sanity.ts` | `npx hardhat full-flow --network localcofhe` |

## Assertion Targets
- **Encrypted math invariants**: Pool reserves remain balanced; DAO votes tally without leakage.
- **Operator status**: Before/after every test, assert `isOperator` to avoid false positives caused by stale approvals.
- **Proof freshness**: Force tasks/tests to fetch obfuscated reserves immediately before submitting transactions.
- **Noise depth**: Keep track of multiplication depth; tests should cover edge cases near noise limits.
- **Access control**: Attempt unauthorized decrypt/unseal calls and assert failure paths.

## Reporting Template
1. Environment summary (Node versions, pnpm version, networks used)
2. Commands executed (copy/paste from automation or manual matrix)
3. Pass/fail status per stage + logs for failures
4. Follow-up actions (redeploy, fix contract, re-run tests)

Store this report alongside deployment artifacts so future contributors know the exact evaluation state.
