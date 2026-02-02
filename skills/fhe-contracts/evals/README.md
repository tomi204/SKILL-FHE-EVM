# FHE Skill Evaluations

Use these eval notes to validate that the skill remains accurate after updates.
Pair this with `references/fhe-evals.md` and the scripts in `scripts/`.

## Token Smoke Tests
- Zama: `scripts/run_zama_token_tests.sh` (requires a running Hardhat node)
- Fhenix: `scripts/run_fhenix_token_tests.sh` (MOCK mode by default)

## Full Regression
- Run `scripts/run_fhe_checks.sh` to compile and test both repos.

## Manual Spot Checks
1. Encrypt + transfer on each stack.
2. Decrypt balances and confirm invariants.
3. Verify proof/signature flows on both protocols.
