# FHE Library Map (Which Contracts Use Which)

This file documents the two different FHE library contracts and which codebases import each one.
Use it when you need to confirm which stack a contract targets or when reconciling cross-protocol behavior.

## Library Sources

- Zama FHEVM library: `/Users/tomas/zama/contracts/fhevm-hardhat-template/node_modules/@fhevm/solidity/lib/FHE.sol`
- Fhenix CoFHE library: `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/node_modules/@fhenixprotocol/cofhe-contracts/FHE.sol`

## Contract Imports (Zama FHEVM)

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:19` - `import {FHE, euint16, euint32, euint64, euint128, ebool, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:20` - `import {FHE, euint16, euint32, euint64, euint128, ebool, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:20` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/TransferHelper.sol:4` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/UniversalRouterHelper.sol:17` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/interfaces/ICERC20.sol:16` - `import {euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/interfaces/IPositionNFT.sol:16` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:16` - `import {FHE, euint16, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolTypes.sol:16` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:16` - `import {FHE, euint64, euint128, externalEuint64, ebool} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolReentrantHook.sol:16` - `import {externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:16` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/ReentrantERC7984.sol:17` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:18` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletCliffConfidential.sol:5` - `import {euint128} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:5` - `import {FHE, ebool, euint64, euint128} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidentialFactory.sol:5` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/governance/utils/VotesConfidential.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/interfaces/IERC7984.sol:5` - `import {euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/interfaces/IERC7984Receiver.sol:5` - `import {ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/interfaces/IERC7984Rwa.sol:4` - `import {externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/ERC7984MintableBurnable.sol:4` - `import {FHE, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:4` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:4` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/finance/VestingWalletConfidentialFactoryMock.sol:5` - `import {FHE} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984FreezableMock.sol:6` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:6` - `import {FHE, eaddress, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ObserverAccessMock.sol:5` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984OmnibusMock.sol:5` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReceiverMock.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReentrantMock.sol:5` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:6` - `import {FHE} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RwaMock.sol:5` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984VotesMock.sol:4` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:5` - `import {FHE, ebool, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerMock.sol:5` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerUserMock.sol:5` - `import {Impl} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:5` - `import {FHE, externalEuint64, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:6` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:5` - `import {FHE, ebool, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:5` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:5` - `import {FHE, euint64, externalEuint64, externalEaddress, eaddress} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:5` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Votes.sol:5` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/utils/ERC7984Utils.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/structs/CheckpointsConfidential.sol:7` - `import {euint32, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/tokens/CERC20.sol:17` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`

## Contract Imports (Fhenix CoFHE)

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:19` - `import {FHE, euint16, euint32, euint64, euint128, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:20` - `import {FHE, euint16, euint32, euint64, euint128, ebool, InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:20` - `import {FHE, euint64, InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:4` - `import {FHE, euint16, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TransferHelper.sol:4` - `import {FHE, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/UniversalRouterHelper.sol:17` - `import {FHE, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/interfaces/ICERC20.sol:16` - `import {euint64, InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/interfaces/IPositionNFT.sol:16` - `import {euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:16` - `import {FHE, euint16, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolTypes.sol:16` - `import {euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:16` - `import {FHE, euint64, euint128, InEuint64, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolReentrantHook.sol:16` - `import {InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/tokens/CERC20.sol:17` - `import {FHE, InEuint64, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`

## Key Differences (What to Look For)

- Zama uses `externalEuint*` / `externalEaddress` for encrypted calldata plus `FHE.fromExternal(...)` to validate proofs.
- Fhenix uses `InEuint*` / `InEaddress` for encrypted calldata plus `FHE.asEuint*` to validate signatures.
- Decrypt flow differs: Zama uses gateway proofs + `FHE.checkSignatures`; Fhenix uses `FHE.decrypt` + `FHE.getDecryptResultSafe`.
- Randomness APIs differ: Zama `randE*` vs Fhenix `randomE*` (see `references/fhe-ops-catalog.md`).

## Refresh

Re-generate the import lists by running:
```bash
rg -n "@fhevm/solidity/lib/FHE.sol" /Users/tomas/zama/contracts/fhevm-hardhat-template/contracts
rg -n "@fhenixprotocol/cofhe-contracts/FHE.sol" /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts
```
