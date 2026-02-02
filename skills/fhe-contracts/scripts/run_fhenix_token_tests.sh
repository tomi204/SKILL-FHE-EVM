#!/usr/bin/env bash
# Run the Fhenix FHERC20 token tests (MOCK environment by default).
set -euo pipefail

COFHE_DIR="/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter"

cd "$COFHE_DIR"

echo "[Fhenix] Running FHERC20 token tests"
# Default hardhat network uses MOCK mode; no localcofhe required
npx hardhat test test/CERC20.test.ts
