# FHE Skill Evaluations

Use these eval notes to validate that the skill remains accurate after updates.
Pair this with `references/fhe-evals.md` for the full manual command list.

## Token Smoke Tests (manual)
- Zama: `npx hardhat test test/CERC20.ts --network localhost`
- Fhenix: `pnpm test -- test/CERC20.test.ts`

## Full Regression (manual)
- Zama: `npm run compile && npm run test`
- Fhenix: `pnpm compile && pnpm test` (add `pnpm test:localcofhe` for LOCAL)

## Manual Spot Checks
1. Encrypt + transfer on each stack.
2. Decrypt balances and confirm invariants.
3. Verify proof/signature flows on both protocols.
