#!/usr/bin/env bash
# Run lint/compile/test checks for both local FHE repos with basic guardrails.
# Usage: scripts/run_fhe_checks.sh [--skip-fhevm] [--skip-cofhe]
set -euo pipefail

ROOT_DIR="/Users/tomas/Documents/New project/skills/fhe-contracts"
FHEVM_DIR="/Users/tomas/zama/contracts/fhevm-hardhat-template"
COFHE_DIR="/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter"

RUN_FHEVM=1
RUN_COFHE=1

while [[ $# -gt 0 ]]; do
  case "$1" in
    --skip-fhevm)
      RUN_FHEVM=0
      ;;
    --skip-cofhe)
      RUN_COFHE=0
      ;;
    *)
      echo "Unknown flag: $1" >&2
      echo "Usage: $0 [--skip-fhevm] [--skip-cofhe]" >&2
      exit 1
      ;;
  esac
  shift
done

run_fhevm() {
  echo "[FHEVM] Running compile + test checks"
  cd "$FHEVM_DIR"
  if [[ ! -d node_modules ]]; then
    echo "[FHEVM] Installing npm dependencies"
    npm install
  fi
  npm run compile
  npm run test
}

run_cofhe() {
  echo "[CoFHE] Running compile + test checks"
  cd "$COFHE_DIR"
  if ! command -v pnpm >/dev/null 2>&1; then
    echo "[CoFHE] pnpm is required but not found in PATH" >&2
    exit 1
  fi
  if [[ ! -d node_modules ]]; then
    echo "[CoFHE] Installing pnpm dependencies"
    pnpm install
  fi
  pnpm compile
  pnpm test
}

if [[ $RUN_FHEVM -eq 1 ]]; then
  run_fhevm
else
  echo "[FHEVM] Skipped"
fi

if [[ $RUN_COFHE -eq 1 ]]; then
  run_cofhe
else
  echo "[CoFHE] Skipped"
fi

cd "$ROOT_DIR"
echo "All requested FHE checks completed."
