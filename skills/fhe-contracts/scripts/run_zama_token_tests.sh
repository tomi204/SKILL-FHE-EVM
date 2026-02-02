#!/usr/bin/env bash
# Run the Zama ERC7984 token tests. Requires a running Hardhat node.
set -euo pipefail

FHEVM_DIR="/Users/tomas/zama/contracts/fhevm-hardhat-template"

cd "$FHEVM_DIR"

echo "[Zama] Running ERC7984 token tests"
# Requires a persistent node for CLI encryption
npx hardhat test test/CERC20.ts --network localhost
