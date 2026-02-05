# Fhenix CoFHE Hardhat Starter

Reference for `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter`.
It covers the starter layout, CLI entry points, and how `cofhejs` plus
`cofhe-hardhat-plugin` are expected to run in MOCK/LOCAL/TESTNET environments.

## Quick Navigation
- Setup and commands: `Install and Scripts (pnpm)`
- Task entry points: `Hardhat Tasks Summary`
- Runtime and API usage: `cofhejs Usage Patterns`
- Signature and decrypt model: `Input Signature Verification`, `Decryption Flow (CoFHE)`
- Local backend lifecycle: `Local CoFHE Workflow`

## Quick Facts
- Stack: Hardhat + TypeScript + `cofhe-hardhat-plugin`, Solidity `0.8.25` with `viaIR`.
- Node: v18+ (pnpm preferred). Repo ships `package-lock.json`, `pnpm-lock.yaml`, and `bun.lock`.
- Env modes: MOCK, LOCAL, TESTNET (arb-sepolia, eth-sepolia). Use `isPermittedCofheEnvironment`
  to skip tests when a signer lacks the right backend.
- Networks: plugin injects `localcofhe`. RPCs defined in `hardhat.config.ts` for
  `eth-sepolia` (11155111) and `arb-sepolia` (421614). Provide `MNEMONIC` via `npx hardhat vars set MNEMONIC`.

## Install and Scripts (pnpm)
```bash
pnpm install
pnpm compile
pnpm clean
pnpm test              # runs against default (MOCK) if not overridden
pnpm test:localcofhe   # smoke tests using the local CoFHE backend

# Local network lifecycle
pnpm localcofhe:start
pnpm localcofhe:stop
pnpm localcofhe:faucet          # funds configured wallet
```

## Running Hardhat Tasks
Tasks are registered in `tasks/`. Invoke them with:
```bash
npx hardhat <task> --network <net>
# or
pnpm hardhat <task> --network <net>
```
Examples:
```bash
npx hardhat deploy-counter --network localcofhe
npx hardhat deploy-tokens --network localcofhe
npx hardhat swap --network arb-sepolia
```

## Hardhat Tasks Summary
| Task | File | Purpose |
| --- | --- | --- |
| `deploy-counter` | `tasks/deploy-counter.ts` | Deploy sample `Counter` using cofhe-enabled signer. |
| `increment-counter` | `tasks/increment-counter.ts` | Encrypts input and increments the counter. |
| `reset-counter` | `tasks/reset-counter.ts` | Resets encrypted counter state. |
| `deploy-tokens` | `tasks/deploy-tokens.ts` | Issues mock CERC20 tokens for DEX testing. |
| `deploy-factory` | `tasks/deploy-factory.ts` | Deploys `EPoolFactory`. |
| `create-pool` | `tasks/create-pool.ts` | Creates confidentiality-preserving pools. |
| `bootstrap-pool` | `tasks/bootstrap-pool.ts` | Seeds liquidity, handling `setOperator` and encrypted inputs. |
| `swap` | `tasks/swap.ts` | Executes encrypted swap after verifying reserve values. |
| `full-flow` | `tasks/full-flow.ts` | Runs deploy -> bootstrap -> swap to verify everything end-to-end. |

## cofhe-hardhat-plugin Highlights
Add `import 'cofhe-hardhat-plugin'` in `hardhat.config.ts`. Key helpers exposed inside tasks/tests:
- `localcofheFundWalletIfNeeded(hre, address)` - automatically tops up local signers.
- `cofhejs_initializeWithHardhatSigner(signer)` - cofhe client bound to Hardhat signer.
- `expectResultSuccess`, `expectResultValue`, `mock_expectPlaintext` - assertions for encrypted outputs.
- `isPermittedCofheEnvironment(hre, 'MODE')` - gate tasks/tests behind the active backend.

## cofhejs Usage Patterns
From `README.md`:
```ts
import { cofhejs, Encryptable, FheTypes } from 'cofhejs/node'

const [encryptedInput] = await cofhejs.encrypt(
  (step) => console.log(`Encrypt step - ${step}`),
  [Encryptable.uint32(5n)]
)

const decrypted = await cofhejs.decrypt(encryptedValue, FheTypes.Uint32)
const unsealed = await cofhejs.unseal(encryptedValue, FheTypes.Uint32)
```
Use these helpers in tasks/tests anytime you must prove that an encrypted input matches its plaintext value.
Always check `Encryptable` types for dynamic ranges.

## Input Signature Verification
- `cofhejs.encrypt` returns `{ ctHash, securityZone, utype, signature }` for each encrypted input.
- Those fields are passed into contracts via the `InEuint64` struct type.
- The CoFHE runtime verifies the signature. For debugging, the repo includes
  `scripts/test-encrypt.ts`, which calls `TaskManager.verifyInput` against a task manager address.
- If signature validation fails, reinitialize cofhejs, recreate permits, and re-encrypt inputs.

## Decryption Flow (CoFHE)
Contracts request decryption with `FHE.decrypt(ciphertext)` and later read results via
`FHE.getDecryptResultSafe(ciphertext)`. If decryption is not ready, tasks revert with
`EPOOL: decryption not ready`. You must wait for the decrypt result or retry after state changes.

## Ciphertext Rules (CoFHE)
- No ciphertext division/modulus. Decrypt, divide in plaintext, then re-encrypt if policy allows.
- Keep operand widths consistent (e.g., `Encryptable.uint32` cannot mix with `Encryptable.uint64`).
- Avoid branching on ciphertexts; control flow must use plaintext/unsealed values.
- Proofs and permits expire: after each state change, fetch new ciphertext handles before resubmitting.

## Token Testing Notes
- `test/CERC20.test.ts` exercises FHERC20 behavior via helpers in `test/helpers/fhenix.ts`.
- Use `initializeCofhe`, `encryptU64`, `decryptBalance`, and `expectFHERC20BalancesChange` to validate
  encrypted and indicated balances without leaking plaintext.

## Local CoFHE Workflow
1. `pnpm localcofhe:start` - spins up whitelisted local backend. Wait for health logs.
2. `MNEMONIC`: store via `npx hardhat vars set MNEMONIC` (seed can remain the test mnemonic shipped in config).
3. `pnpm localcofhe:faucet` - ensures deployer wallet is funded.
4. `npx hardhat deploy-tokens --network localcofhe` (or `full-flow`) to seed contracts.
5. Stop services with `pnpm localcofhe:stop` to free ports/resources.

## Testing Tips
- For deterministic CI, run `pnpm test` (MOCK backend). Guard tests with
  `if (!isPermittedCofheEnvironment(hre, 'MOCK')) return;` inside each suite.
- When talking to localcofhe or testnets, call `cofhejs_initializeWithHardhatSigner` once in `before` hooks.
- Use `await hre.cofhe.mocks.getPlaintext(...)` only in MOCK tests, never in production flows.

## Ignition Modules
`ignition/` contains Hardhat Ignition configs for structured deployments. They are optional because the tasks
already expose a deterministic path, but you can call `npx hardhat ignition deploy ignition/modules/Counter.ts` if
Ignition flows are preferred.

## Contract Layout
- `contracts/Counter.sol` - minimal example using cofhe types.
- `contracts/Lock.sol` - template for time-based release.
- `contracts/tokens/CERC20.sol` - FHERC20-based confidential token implementation.
