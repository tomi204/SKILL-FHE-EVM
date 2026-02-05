# FHE Test Reference (Zama + Fhenix)

Use this file for test execution. It is command-only guidance and does not rely on any skill-local scripts.

## Preconditions
- Zama repo: `/Users/tomas/zama/contracts/fhevm-hardhat-template`
- Fhenix repo: `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter`
- Zama runtime node available for localhost integration tests (`npx hardhat node` or `anvil`)
- Fhenix local backend available for LOCAL mode (`pnpm localcofhe:start`) when needed

## Zama FHEVM Tests
### Install and baseline
```bash
cd /Users/tomas/zama/contracts/fhevm-hardhat-template
npm install
npm run compile
npm run test
```

### Localhost integration
```bash
cd /Users/tomas/zama/contracts/fhevm-hardhat-template
npx hardhat test --network localhost
```

### Token-focused (ERC7984 / CERC20)
```bash
cd /Users/tomas/zama/contracts/fhevm-hardhat-template
npx hardhat test test/CERC20.ts --network localhost
```

### Deployment smoke
```bash
cd /Users/tomas/zama/contracts/fhevm-hardhat-template
npx hardhat run scripts/deploy/index.ts --network localhost
```

## Fhenix CoFHE Tests
### Install and MOCK baseline
```bash
cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter
pnpm install
pnpm compile
pnpm test
```

### LOCAL backend integration
```bash
cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter
pnpm localcofhe:start
pnpm test:localcofhe
```

### Token-focused (FHERC20 / CERC20)
```bash
cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter
pnpm test -- test/CERC20.test.ts
```

### Full-flow smoke
```bash
cd /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter
npx hardhat full-flow --network localcofhe
```

## Proof and Signature Validation Test Targets
- Zama: exercise paths that call `FHE.fromExternal(...)` and `FHE.checkSignatures(...)`.
- Fhenix: exercise paths that call `FHE.asEuint*(InEuint*)`, `FHE.decrypt(...)`, and `FHE.getDecryptResultSafe(...)`.
- For concrete contract call sites, use `fhe-ops-usage-first-party.md` and `fhe-signatures.md`.

## Failure Triage
- Proof mismatch or stale handle: re-encrypt inputs and re-fetch reserves immediately before tx.
- Decryption not ready (Fhenix): wait for decrypt result and retry.
- Operator errors: re-run token operator/approval setup before pool/token actions.
- Detailed recovery guide: `fhe-troubleshooting.md`.

