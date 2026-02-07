# FHE Test Reference (Zama + Fhenix)

Use this file for test execution. It is command-only guidance and does not rely on any skill-local scripts.

## Preconditions
- Zama repo: `<ZAMA_REPO>`
- Fhenix repo: `<FHENIX_REPO>`
- Zama runtime node available for localhost integration tests (`npx hardhat node` or `anvil`)
- Fhenix localcofhe backend reachable for LOCAL mode (`pnpm localcofhe:test`) when needed

## Zama FHEVM Tests
### Install and baseline
```bash
cd <ZAMA_REPO>
npm install
npm run compile
npm run test
```

### Localhost integration
```bash
cd <ZAMA_REPO>
npx hardhat test --network localhost
```

### Token-focused (ERC7984 / CERC20)
```bash
cd <ZAMA_REPO>
npx hardhat test test/CERC20.ts --network localhost
```

### Deployment smoke
```bash
cd <ZAMA_REPO>
npx hardhat run scripts/deploy/index.ts --network localhost
```

## Fhenix CoFHE Tests
### Install and MOCK baseline
```bash
cd <FHENIX_REPO>
pnpm install
pnpm compile
pnpm test
```

### LOCAL backend integration
```bash
cd <FHENIX_REPO>
pnpm localcofhe:faucet
pnpm localcofhe:test
```
The current repo does not define runnable `localcofhe:start` / `localcofhe:stop` npm scripts; run backend lifecycle externally.

### MOCK vs LOCAL behavior
- Most Fhenix tests are MOCK-gated with `skipIfNotMock(this)` from `test/helpers/fhenix.ts`.
- `pnpm test` is the canonical deterministic regression path for this repo (MOCK backend).
- `pnpm localcofhe:test` is for LOCAL integration, and MOCK-gated suites may skip by design.

### Token-focused (FHERC20 / CERC20)
```bash
cd <FHENIX_REPO>
pnpm test -- test/CERC20.test.ts
```

### Full-flow smoke
```bash
cd <FHENIX_REPO>
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
