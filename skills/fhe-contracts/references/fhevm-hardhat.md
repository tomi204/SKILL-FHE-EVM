# Zama FHEVM Hardhat Template

Use this reference whenever you operate inside `<ZAMA_REPO>`.
It summarizes repo layout, encrypted workflows, and the commands required to manage FHE-enabled Solidity
projects without re-reading every source file.

## Quick Navigation
- Setup and commands: `Install and Core Scripts`
- Deploy pipeline: `Deployment Orchestrator`
- Runtime usage: `Encrypt / Decrypt Workflow (Hardhat side)`
- Proof model: `Proof and Signature Checks (Zama)`
- Client integration: `Frontend / SDK Hooks`

## Quick Facts
- Stack: Hardhat + TypeScript + `@fhevm/hardhat-plugin`, Solidity `0.8.27` (`viaIR`, optimizer 400, Cancun EVM).
- Node: v20+ required. Repo ships `package-lock.json` and `bun.lock`.
- Environment variables: configure via `npx hardhat vars set MNEMONIC`, `INFURA_API_KEY`, optional `ETHERSCAN_API_KEY`.
- Networks: use `localhost`, `anvil`, or `sepolia` (avoid ephemeral `hardhat` because the FHEVM CLI needs
  a persistent RPC). Chain IDs already configured in `hardhat.config.ts`.
- Artifacts: new deployments land in `deployments/<network>.json` plus `deployments-summary.json`, which is
  required by most CLI tasks.

## Install and Core Scripts
```bash
npm install
npx hardhat vars setup          # see unset secrets
npm run compile                 # contract-sizer runs by default
npm run test                    # mocha tests (200s timeout)
npx hardhat node                # persistent chain for local FHE ops
npx hardhat deploy --network localhost   # hardhat-deploy shortcut
```

## Deployment Orchestrator
`scripts/deploy/index.ts` orchestrates every encrypted component. Always start a node first, then run:
```
npx hardhat run scripts/deploy/index.ts --network <network>
```
| Step | File | Purpose |
| --- | --- | --- |
| 1 | `steps/deployTokens.ts` | Deploys or reuses confidential ERC20s (6 decimals). |
| 2 | `steps/deployFactory.ts` | Deploys the encrypted pool factory with obfuscation params. |
| 3 | `steps/createPools.ts` | Creates pool pairs defined in `utils/tokens.ts`. |
| 4 | `steps/bootstrapPools.ts` | Initializes reserves (skips if already initialized). |
| 5 | `steps/deployAirdrop.ts` | Deploys the sample distributor contract. |
| 6 | `steps/fundAirdrop.ts` | Sends token allocations. |
| 7 | `steps/smokeTestPools.ts` | Runs encrypted swaps to confirm health. |

Useful flags:
```
--force / DEPLOY_FORCE=true
--skipFunding / --skipPools / --skipBootstrap / --skipSmoke
--only=<StepName>
```

## Hardhat Task Highlights
Call any task with `npx hardhat <task> --network <net> [flags]`. These are the ones most relevant to
FHE operations:

| Task | What it does |
| --- | --- |
| `accounts` | Prints configured signer addresses. |
| `cerc20:deploy` | Issues another confidential ERC20 token. |
| `cerc20:set-operator` | Grants transfer authority (required before swaps/liquidity). |
| `cerc20:transfer` | Runs encrypted transfer flow. |
| `cerc20:balance` | Decrypts caller balance through the CLI. |
| `task:list_pools` | Lists deployed pools using `deployments-summary.json`. |
| `task:pool_info` | Shows pool metadata and current obfuscated reserves. |
| `task:pool_balances` | Decrypts balances for the selected token. |
| `task:pool_add_liquidity` | Encrypts contributions, bootstraps if necessary, handles operator setup. |
| `task:pool_swap` | Encrypts swap params, attaches decrypted reserves/proof, executes the trade. |
| `pool:*` | Lower-level primitives (bootstrap, contribute, swap) when you already have handles and proofs. |
| `full-deploy` | Runs the orchestrator from inside Hardhat task context. |
| `airdrop:*` | Deploy/fund/claim helper tasks for the sample distributor. |

## Local vs Testnet Flow
1. Start RPC: `npx hardhat node` (or `anvil`). The FHEVM CLI stores session data per node, so keep it running.
2. Deploy via `npx hardhat run scripts/deploy/index.ts --network localhost` or targeted `--only=<Step>` reruns.
3. Use CLI tasks to interact; they automatically call `await fhevm.initializeCLIApi()` and manage encrypted inputs.
4. When moving to Sepolia, repeat the script with `--network sepolia`, then copy addresses from
   `deployments/sepolia.json`.

## Encrypt / Decrypt Workflow (Hardhat side)
```ts
const { ethers, fhevm } = hre
await fhevm.initializeCLIApi()
const input = await fhevm.createEncryptedInput(contractAddress, signer.address)
input.add64(amountA)
input.add64(amountB)
const encrypted = await input.encrypt()
// pass encrypted.handles + encrypted.inputProof into pool functions

const decrypted = await fhevm.userDecryptEuint(
  FhevmType.euint64,
  encryptedBalance,
  await token.getAddress(),
  signer,
)
```
Always regenerate encrypted inputs and reserve proofs just before submitting a transaction. Proofs become invalid
any time the underlying encrypted state changes.

## Proof and Signature Checks (Zama)
- **Input proofs**: `FHE.fromExternal(externalEuint, inputProof)` validates inputs created via
  `fhevm.createEncryptedInput(...).encrypt()`.
- **Reserve proofs**: contracts validate decrypted reserve values with
  `FHE.checkSignatures(handles, abi.encode(cleartexts), proof)` (see `EPOOL.sol::_validateSwapParams` and
  `_validateLiquidityParams`).
- If you see `checkSignatures` errors, re-fetch obfuscated reserves from the pool and request a fresh gateway
  decryption proof.

## Frontend / SDK Hooks
- Tokens use 6 decimals. Coordinate conversions with helpers like `toTokenAmount` and `fromTokenAmount`.
- `setOperator(token, pool, signer, expiry)` must run before the pool (or LP token) can move funds.
- Fetch obfuscated reserves via `pool.obfuscatedStates()` and forward the handles to the FHEVM gateway to obtain
  decrypted values plus `reserveProof`.
- Create encrypted client inputs with `instance.createEncryptedInput(pool, user)` and add uint64 values in the
  exact order required by the contract before calling `.encrypt()`.
- API surface, helper snippets, and error handling patterns live in `references/fhevm-client.md`.

## Tips
- Keep `deployments-summary.json` in sync or tasks will fail early.
- Toggle contract-sizer via `CONTRACT_SIZER_RUN=false` / `CONTRACT_SIZER_STRICT=false` when you just need a quick
  compile.
- Gas profiling is opt-in through `REPORT_GAS=true`.
- After redeployments, update any downstream repos (frontends, other skills) with the new addresses found in
  `deployments/<network>.json`.
