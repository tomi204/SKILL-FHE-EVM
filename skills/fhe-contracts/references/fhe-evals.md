# FHE Evaluation Playbook

Use this reference when verifying that encrypted contracts compile, tests cover the right branches, and
runtime invariants hold. This is a markdown-only checklist; follow the manual commands below.

## Pre-flight Checklist
1. Node 20+ installed for FHEVM, Node 18+ + pnpm for CoFHE.
2. Hardhat vars configured (`MNEMONIC`, `INFURA_API_KEY`, optional explorers).
3. Local daemons running (Hardhat node or localcofhe) when executing integration tests.
4. Fresh deployments artifacts available (`deployments/<network>.json`).

## Manual Runs (no skill scripts)
### Zama FHEVM
```bash
cd /Users/tomas/zama/contracts/fhevm-hardhat-template
npm install
npm run compile
npm run test
npx hardhat test --network localhost
```

### Fhenix CoFHE
```bash
cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter
pnpm install
pnpm compile
pnpm test
pnpm test:localcofhe
```

## Token Smoke Tests (manual)
### Zama ERC7984
```bash
cd /Users/tomas/zama/contracts/fhevm-hardhat-template
npx hardhat test test/CERC20.ts --network localhost
```

### Fhenix FHERC20
```bash
cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter
pnpm test -- test/CERC20.test.ts
```

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
