# FHE Operations Usage Map (Contract References)

This file lists every FHE operation used in the contracts for each protocol, with exact file/line references.
Use it when you need proof that an op is in use or want to navigate to the implementation quickly.

## Navigation
- Use `## Zama FHEVM Contract Ops` and `## Fhenix CoFHE Contract Ops` to jump by protocol.
- Use `rg -n "^### <op>$" skills/fhe-contracts/references/fhe-ops-usage-map.md` to jump to one operation.
- This map includes first-party contracts and embedded vendor contracts (for Zama, `openzeppelin-confidential-contracts` is present under the same contracts tree).

## Zama FHEVM Contract Ops

### add

- `<ZAMA_REPO>/contracts/EPOOL.sol:252` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:42` - `euint64 factor = FHE.add(offset, minFactor);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:85` - `euint128 newReleasedAmount = FHE.add(released(token), amountSent);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:98` - `_vestingSchedule(FHE.add(released(token), IERC7984(token).confidentialBalanceOf(address(this))), timestamp);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:299` - `ptr = FHE.add(_balances[to], transferred);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:24` - `euint64 newValue = FHE.add(oldValue, delta);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:57` - `euint64 sum = FHE.add(a, b);`

### allow

- `<ZAMA_REPO>/contracts/Airdrop.sol:55` - `FHE.allow(AIRDROP_AMOUNT, _token);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:100` - `FHE.allow(minObfuscationFactor, pool);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:101` - `FHE.allow(obfuscationFactorStep, pool);`
- `<ZAMA_REPO>/contracts/TransferHelper.sol:11` - `FHE.allow(encryptedAmount, token);`
- `<ZAMA_REPO>/contracts/UniversalRouterHelper.sol:123` - `FHE.allow(amounts[i], address(tokens[i]));`
- `<ZAMA_REPO>/contracts/UniversalRouterHelper.sol:124` - `FHE.allow(amounts[i], spender);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:84` - `FHE.allow(reportedAmount, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:86` - `FHE.allow(newReleasedAmount, owner());`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:26` - `FHE.allow(encryptedAmount, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:34` - `FHE.allow(encryptedAddr, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:42` - `FHE.allow(confidentialTotalSupply(), _OWNER);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:15` - `FHE.allow(handle, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:22` - `FHE.allow(success, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:26` - `FHE.allow(updated, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:35` - `FHE.allow(success, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:39` - `FHE.allow(updated, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:48` - `FHE.allow(success, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:52` - `FHE.allow(sum, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:61` - `FHE.allow(success, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:65` - `FHE.allow(difference, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerMock.sol:15` - `FHE.allow(handle, address(this));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:288` - `FHE.allow(ptr, from);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:301` - `FHE.allow(ptr, to);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:305` - `if (from != address(0)) FHE.allow(transferred, from);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:306` - `if (to != address(0)) FHE.allow(transferred, to);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:37` - `FHE.allow(amount, account);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:53` - `FHE.allow(encryptedAmount, account);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:32` - `FHE.allow(balanceHandle, newObserver);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:52` - `FHE.allow(confidentialBalanceOf(from), fromObserver);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:53` - `FHE.allow(transferred, fromObserver);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:56` - `FHE.allow(confidentialBalanceOf(to), toObserver);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:58` - `FHE.allow(transferred, toObserver);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:170` - `FHE.allow(sender, omnibusFrom);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:171` - `FHE.allow(sender, omnibusTo);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:174` - `FHE.allow(recipient, omnibusFrom);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:175` - `FHE.allow(recipient, omnibusTo);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:192` - `FHE.allow(sender, omnibusFrom);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:193` - `FHE.allow(sender, omnibusTo);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:196` - `FHE.allow(recipient, omnibusFrom);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:197` - `FHE.allow(recipient, omnibusTo);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:202` - `FHE.allow(transferred, omnibusFrom);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:203` - `FHE.allow(transferred, omnibusTo);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:122` - `FHE.allow(mintedAmount, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:133` - `FHE.allow(mintedAmount, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:144` - `FHE.allow(burntAmount, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:155` - `FHE.allow(burntAmount, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:227` - `FHE.allow(transferred, msg.sender);`

### allowThis

- `<ZAMA_REPO>/contracts/Airdrop.sol:45` - `FHE.allowThis(AIRDROP_AMOUNT);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:127` - `FHE.allowThis(minObfuscationFactor);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:128` - `FHE.allowThis(obfuscationFactorStep);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:153` - `FHE.allowThis(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:154` - `FHE.allowThis(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:155` - `FHE.allowThis(obfuscatedStates.lpSupply);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:200` - `FHE.allowThis(reserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:201` - `FHE.allowThis(reserveB);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:59` - `FHE.allowThis(minObfuscationFactor);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:60` - `FHE.allowThis(obfuscationFactorStep);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:74` - `FHE.allowThis(minObfuscationFactor);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:75` - `FHE.allowThis(obfuscationFactorStep);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:42` - `FHE.allowThis(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:69` - `FHE.allowThis(lastPullAmount);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:70` - `FHE.allowThis(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:71` - `FHE.allowThis(lastReserveAddition);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:91` - `FHE.allowThis(lastObfuscationFactor);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:83` - `FHE.allowThis(reportedAmount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:87` - `FHE.allowThis(newReleasedAmount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984FreezableMock.sol:36` - `FHE.allowThis(available);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:25` - `FHE.allowThis(encryptedAmount = FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:33` - `FHE.allowThis(encryptedAddr);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:14` - `FHE.allowThis(handle);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:21` - `FHE.allowThis(success);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:25` - `FHE.allowThis(updated);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:34` - `FHE.allowThis(success);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:38` - `FHE.allowThis(updated);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:47` - `FHE.allowThis(success);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:51` - `FHE.allowThis(sum);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:60` - `FHE.allowThis(success);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:64` - `FHE.allowThis(difference);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:281` - `FHE.allowThis(ptr);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:287` - `FHE.allowThis(ptr);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:296` - `FHE.allowThis(ptr);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:300` - `FHE.allowThis(ptr);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:307` - `FHE.allowThis(transferred);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:36` - `FHE.allowThis(amount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:52` - `FHE.allowThis(encryptedAmount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:169` - `FHE.allowThis(sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:173` - `FHE.allowThis(recipient);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:191` - `FHE.allowThis(sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:195` - `FHE.allowThis(recipient);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:201` - `FHE.allowThis(transferred);`

### allowTransient

- `<ZAMA_REPO>/contracts/EPOOL.sol:183` - `FHE.allowTransient(amountAOut, address(assetA));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:184` - `FHE.allowTransient(amountBOut, address(assetB));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:470` - `FHE.allowTransient(refund, address(inputAsset));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:474` - `FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:507` - `FHE.allowTransient(amount, address(token));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:81` - `FHE.allowTransient(amount, token);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidentialFactory.sol:58` - `FHE.allowTransient(encryptedAmount, token);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:23` - `FHE.allowTransient(amount, address(_fromToken));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:18` - `FHE.allowTransient(amount, address(fromToken));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:21` - `FHE.allowTransient(amountTransferred, address(toToken));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReceiverMock.sol:23` - `FHE.allowTransient(returnVal, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:138` - `FHE.allowTransient(transferred, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:150` - `FHE.allowTransient(transferred, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:161` - `FHE.allowTransient(transferred, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:172` - `FHE.allowTransient(transferred, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:185` - `FHE.allowTransient(transferred, msg.sender);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:198` - `FHE.allowTransient(transferred, msg.sender);`

### and

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:179` - `ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEaddress

- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:32` - `eaddress encryptedAddr = FHE.asEaddress(addr);`

### asEbool

- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReceiverMock.sol:22` - `ebool returnVal = FHE.asEbool(success);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/utils/ERC7984Utils.sol:44` - `return FHE.asEbool(true);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:22` - `return (FHE.asEbool(true), delta);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:37` - `return (FHE.asEbool(true), oldValue);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:51` - `return (FHE.asEbool(true), b);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:54` - `return (FHE.asEbool(true), a);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:68` - `return (FHE.asEbool(true), a);`

### asEuint128

- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:99` - `euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`

### asEuint64

- `<ZAMA_REPO>/contracts/Airdrop.sol:44` - `AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `<ZAMA_REPO>/contracts/TransferHelper.sol:10` - `euint64 encryptedAmount = FHE.asEuint64(amount);`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:118` - `amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:184` - `euint64 zero = FHE.asEuint64(0);`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:35` - `liquidity: FHE.asEuint64(0),`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:36` - `token0Amount: FHE.asEuint64(0),`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:37` - `token1Amount: FHE.asEuint64(0),`
- `<ZAMA_REPO>/contracts/mocks/ReentrantERC7984.sol:35` - `euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:36` - `euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:79` - `euint64 reduction = FHE.asEuint64(underpaymentAmount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:25` - `FHE.allowThis(encryptedAmount = FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:54` - `return _mint(to, FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:11` - `_mint(to, FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:15` - `_burn(from, FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:19` - `_transfer(msg.sender, to, FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RwaMock.sol:36` - `_setConfidentialFrozen(account, FHE.asEuint64(amount));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:13` - `handle = FHE.asEuint64(amount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerMock.sol:14` - `euint64 handle = FHE.asEuint64(amount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:271` - `euint64 refund = _update(to, from, FHE.select(success, FHE.asEuint64(0), sent));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:292` - `transferred = FHE.select(success, amount, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:82` - `_mint(to, FHE.asEuint64(SafeCast.toUint64(amount / rate())));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:102` - `_mint(to, FHE.asEuint64(SafeCast.toUint64(amount / rate())));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:47` - `return FHE.select(success, unfrozen, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:70` - `encryptedAmount = FHE.select(FHE.le(encryptedAmount, unfrozen), encryptedAmount, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:39` - `return (FHE.eq(delta, 0), FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:59` - `res = FHE.select(success, sum, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:73` - `res = FHE.select(success, difference, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/tokens/CERC20.sol:29` - `euint64 encryptedAmount = FHE.asEuint64(amount);`

### checkSignatures

- `<ZAMA_REPO>/contracts/EPOOL.sol:283` - `FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB, decryptedOL), OProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:430` - `FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB), reserveProof);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:29` - `///   against the pool's current obfuscated ciphertext handles (via FHE.checkSignatures).`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:34` - `FHE.checkSignatures(handles, abi.encode(cleartextAmount), decryptionProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:233` - `FHE.checkSignatures(handles, cleartextMemory, decryptionProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:145` - `FHE.checkSignatures(handles, cleartexts, decryptionProof);`

### div

- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:118` - `amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:162` - `effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:132` - `return FHE.div(FHE.mul(totalAllocation, (timestamp - start())), duration());`

### eq

- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:76` - `// This tests the guard: FHE.eq(pulledAmount, swap.pullAmount)`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:39` - `return (FHE.eq(delta, 0), FHE.asEuint64(0));`

### fromExternal

- `<ZAMA_REPO>/contracts/EPOOL.sol:246` - `euint64 amountA = FHE.fromExternal(amountAExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:247` - `euint64 amountB = FHE.fromExternal(amountBExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:300` - `euint64 amountA = FHE.fromExternal(amountAExt, amountProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:301` - `euint64 amountB = FHE.fromExternal(amountBExt, amountProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:342` - `euint64 sharesToRemove = FHE.fromExternal(sharesToRemoveExt, sharesProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:390` - `euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:391` - `euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:413` - `euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:414` - `euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:57` - `minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:58` - `obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:72` - `minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:73` - `obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:39` - `euint64 effectiveIn = FHE.fromExternal(effectiveInExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:55` - `euint64 amountIn = FHE.fromExternal(amountInExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:56` - `euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:87` - `euint64 minFactor = FHE.fromExternal(minFactorExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:88` - `euint64 step = FHE.fromExternal(stepExt, proof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidentialFactory.sol:57` - `euint64 encryptedAmount = FHE.fromExternal(vestingPlan.encryptedAmount, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/ERC7984MintableBurnable.sol:17` - `_mint(to, FHE.fromExternal(amount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/ERC7984MintableBurnable.sol:21` - `_burn(from, FHE.fromExternal(amount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:22` - `euint64 amount = FHE.fromExternal(encryptedInput, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:16` - `euint64 amount = FHE.fromExternal(amountInput, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984FreezableMock.sol:31` - `_setConfidentialFrozen(account, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:50` - `return _mint(to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:63` - `return _transfer(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:73` - `return _transferAndCall(from, to, FHE.fromExternal(encryptedAmount, inputProof), data);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:81` - `return _burn(from, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:90` - `return _update(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:120` - `return _transfer(msg.sender, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:137` - `transferred = _transfer(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:160` - `transferred = _transferAndCall(msg.sender, to, FHE.fromExternal(encryptedAmount, inputProof), data);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:184` - `transferred = _transferAndCall(from, to, FHE.fromExternal(encryptedAmount, inputProof), data);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:127` - `_unwrap(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:76` - `eaddress sender = FHE.fromExternal(externalSender, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:77` - `eaddress recipient = FHE.fromExternal(externalRecipient, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:78` - `euint64 amount = FHE.fromExternal(externalAmount, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:139` - `eaddress sender = FHE.fromExternal(externalSender, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:140` - `eaddress recipient = FHE.fromExternal(externalRecipient, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:141` - `euint64 amount = FHE.fromExternal(externalAmount, inputProof);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:103` - `_setConfidentialFrozen(account, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:121` - `euint64 mintedAmount = _mint(to, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:143` - `euint64 burntAmount = _burn(account, FHE.fromExternal(encryptedAmount, inputProof));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:166` - `return _forceUpdate(from, to, FHE.fromExternal(encryptedAmount, inputProof));`

### ge

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:178` - `ebool meetsSlippage = FHE.ge(amountOutRaw, minAmountOut);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:70` - `ebool success = FHE.ge(vestedAmount_, releasedAmount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:25` - `success = FHE.ge(newValue, oldValue);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:41` - `success = FHE.ge(oldValue, delta);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:58` - `success = FHE.ge(sum, a);`

### isAllowed

- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:125` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:147` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:170` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:195` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:210` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:113` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:91` - `require(FHE.isAllowed(sender, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(sender, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:92` - `require(FHE.isAllowed(recipient, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(recipient, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:155` - `require(FHE.isAllowed(sender, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(sender, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:156` - `require(FHE.isAllowed(recipient, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(recipient, msg.sender));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:109` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:129` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:151` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:180` - `FHE.isAllowed(encryptedAmount, msg.sender),`

### isInitialized

- `<ZAMA_REPO>/contracts/EPOOL.sol:122` - `require(FHE.isInitialized(minObfuscationFactor) == false, "EPOOL: obfuscation-already-initialized");`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/governance/utils/VotesConfidential.sol:182` - `if (from != to && FHE.isInitialized(amount)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:24` - `if (FHE.isInitialized(updated)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:37` - `if (FHE.isInitialized(updated)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:50` - `if (FHE.isInitialized(sum)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:63` - `if (FHE.isInitialized(difference)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:285` - `require(FHE.isInitialized(fromBalance), ERC7984ZeroBalance(from));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:31` - `if (FHE.isInitialized(balanceHandle)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:21` - `if (!FHE.isInitialized(oldValue)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:35` - `if (!FHE.isInitialized(oldValue)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:36` - `if (!FHE.isInitialized(delta)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:50` - `if (!FHE.isInitialized(a)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:53` - `if (!FHE.isInitialized(b)) {`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:67` - `if (!FHE.isInitialized(b)) {`

### le

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:175` - `ebool withinTaylor = FHE.le(effectiveIn, uint64(maxEffectiveIn));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:70` - `encryptedAmount = FHE.select(FHE.le(encryptedAmount, unfrozen), encryptedAmount, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:72` - `success = FHE.le(difference, a);`

### makePubliclyDecryptable

- `<ZAMA_REPO>/contracts/EPOOL.sol:157` - `FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:158` - `FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:159` - `FHE.makePubliclyDecryptable(obfuscatedStates.lpSupply);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:491` - `FHE.makePubliclyDecryptable(reserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:492` - `FHE.makePubliclyDecryptable(reserveB);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:43` - `FHE.makePubliclyDecryptable(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:73` - `FHE.makePubliclyDecryptable(lastPullAmount);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:74` - `FHE.makePubliclyDecryptable(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:75` - `FHE.makePubliclyDecryptable(lastReserveAddition);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:92` - `FHE.makePubliclyDecryptable(lastObfuscationFactor);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:26` - `FHE.makePubliclyDecryptable(amountTransferred);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:214` - `FHE.makePubliclyDecryptable(encryptedAmount);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:158` - `FHE.makePubliclyDecryptable(burntAmount);`

### min

- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:115` - `euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `<ZAMA_REPO>/contracts/EPOOL.sol:148` - `obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:149` - `obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:150` - `obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:102` - `euint128 linearTerm = FHE.mul(effectiveIn128, uint128(priceScaled));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:113` - `euint128 quadTerm = FHE.mul(effectiveIn128, uint128(conservativeCoeff));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:162` - `effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:132` - `return FHE.div(FHE.mul(totalAllocation, (timestamp - start())), duration());`

### randEuint16

- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:37` - `euint16 seed = FHE.randEuint16();`

### select

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:185` - `euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:187` - `result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:271` - `euint64 refund = _update(to, from, FHE.select(success, FHE.asEuint64(0), sent));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:292` - `transferred = FHE.select(success, amount, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:47` - `return FHE.select(success, unfrozen, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:70` - `encryptedAmount = FHE.select(FHE.le(encryptedAmount, unfrozen), encryptedAmount, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:26` - `updated = FHE.select(success, newValue, oldValue);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:42` - `updated = FHE.select(success, FHE.sub(oldValue, delta), oldValue);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:59` - `res = FHE.select(success, sum, FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:73` - `res = FHE.select(success, difference, FHE.asEuint64(0));`

### setCoprocessor

- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/finance/VestingWalletConfidentialFactoryMock.sol:68` - `FHE.setCoprocessor(ZamaConfig.getEthereumCoprocessorConfig());`

### shr

- `<ZAMA_REPO>/contracts/EPOOL.sol:252` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:252` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`

### sol

- `<ZAMA_REPO>/contracts/Airdrop.sol:19` - `import {FHE, euint16, euint32, euint64, euint128, ebool, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/EPOOL.sol:20` - `import {FHE, euint16, euint32, euint64, euint128, ebool, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:20` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/TransferHelper.sol:4` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/UniversalRouterHelper.sol:17` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/interfaces/ICERC20.sol:16` - `import {euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/interfaces/IPositionNFT.sol:16` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:16` - `import {FHE, euint16, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/libraries/EPoolTypes.sol:16` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:16` - `import {FHE, euint64, euint128, externalEuint64, ebool} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/mocks/EPoolReentrantHook.sol:16` - `import {externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:16` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/mocks/ReentrantERC7984.sol:17` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:18` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletCliffConfidential.sol:5` - `import {euint128} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:5` - `import {FHE, ebool, euint64, euint128} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidentialFactory.sol:5` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/governance/utils/VotesConfidential.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/interfaces/IERC7984.sol:5` - `import {euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/interfaces/IERC7984Receiver.sol:5` - `import {ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/interfaces/IERC7984Rwa.sol:4` - `import {externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/ERC7984MintableBurnable.sol:4` - `import {FHE, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:4` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:4` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/finance/VestingWalletConfidentialFactoryMock.sol:5` - `import {FHE} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984FreezableMock.sol:6` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:6` - `import {FHE, eaddress, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ObserverAccessMock.sol:5` - `import {FHE, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984OmnibusMock.sol:5` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReceiverMock.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReentrantMock.sol:5` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:6` - `import {FHE} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RwaMock.sol:5` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984VotesMock.sol:4` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:5` - `import {FHE, ebool, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerMock.sol:5` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerUserMock.sol:5` - `import {Impl} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:5` - `import {FHE, externalEuint64, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:6` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:5` - `import {FHE, ebool, euint64, externalEuint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:5` - `import {FHE, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:5` - `import {FHE, euint64, externalEuint64, externalEaddress, eaddress} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:5` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Votes.sol:5` - `import {euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/utils/ERC7984Utils.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:5` - `import {FHE, ebool, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/structs/CheckpointsConfidential.sol:7` - `import {euint32, euint64} from "@fhevm/solidity/lib/FHE.sol";`
- `<ZAMA_REPO>/contracts/tokens/CERC20.sol:17` - `import {FHE, externalEuint64, euint64} from "@fhevm/solidity/lib/FHE.sol";`

### sub

- `<ZAMA_REPO>/contracts/EPOOL.sol:467` - `euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:77` - `euint64 netA = FHE.sub(amountA, feeA);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:78` - `euint64 netB = FHE.sub(amountB, feeB);`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:117` - `euint128 result = FHE.sub(linearTerm, quadTerm);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:80` - `euint64 reportedAmount = FHE.sub(actualTransferred, reduction);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:272` - `transferred = FHE.sub(sent, refund);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:295` - `ptr = FHE.sub(_totalSupply, transferred);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:42` - `updated = FHE.select(success, FHE.sub(oldValue, delta), oldValue);`
- `<ZAMA_REPO>/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:71` - `euint64 difference = FHE.sub(a, b);`

### toBytes32

- `<ZAMA_REPO>/contracts/EPOOL.sol:280` - `cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:281` - `cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:282` - `cts[2] = FHE.toBytes32(obfuscatedStates.lpSupply);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:363` - `//emit WithdrawalFeeCollected(tokenId, FHE.toBytes32(feeA), FHE.toBytes32(feeB));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:363` - `//emit WithdrawalFeeCollected(tokenId, FHE.toBytes32(feeA), FHE.toBytes32(feeB));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:428` - `cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:429` - `cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:480` - `emit AtomicSwapExecuted(msg.sender, recipient, aForB, FHE.toBytes32(swap.amountOut));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:493` - `handleA = FHE.toBytes32(reserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:494` - `handleB = FHE.toBytes32(reserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:521` - `FHE.toBytes32(reserveA),`
- `<ZAMA_REPO>/contracts/EPOOL.sol:522` - `FHE.toBytes32(reserveB),`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:44` - `return FHE.toBytes32(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:77` - `pullHandle = FHE.toBytes32(lastPullAmount);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:78` - `amountOutHandle = FHE.toBytes32(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:79` - `reserveAdditionHandle = FHE.toBytes32(lastReserveAddition);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:93` - `return FHE.toBytes32(lastObfuscationFactor);`

## Fhenix CoFHE Contract Ops

### add

- `<FHENIX_REPO>/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `<FHENIX_REPO>/contracts/TestFHE.sol:30` - `euint64 result = FHE.add(a, b);`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:42` - `euint64 factor = FHE.add(offset, minFactor);`

### allow

- `<FHENIX_REPO>/contracts/Airdrop.sol:54` - `FHE.allow(AIRDROP_AMOUNT, _token);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:98` - `FHE.allow(minObfuscationFactor, pool);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:99` - `FHE.allow(obfuscationFactorStep, pool);`
- `<FHENIX_REPO>/contracts/TransferHelper.sol:10` - `FHE.allow(encryptedAmount, token);`
- `<FHENIX_REPO>/contracts/UniversalRouterHelper.sol:123` - `FHE.allow(amounts[i], address(tokens[i]));`
- `<FHENIX_REPO>/contracts/UniversalRouterHelper.sol:124` - `FHE.allow(amounts[i], spender);`

### allowGlobal

- `<FHENIX_REPO>/contracts/EPOOL.sol:154` - `FHE.allowGlobal(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:155` - `FHE.allowGlobal(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:156` - `FHE.allowGlobal(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:480` - `FHE.allowGlobal(reserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:481` - `FHE.allowGlobal(reserveB);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:17` - `FHE.allowGlobal(lastRandom16);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:24` - `FHE.allowGlobal(lastRandom64);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:31` - `FHE.allowGlobal(result);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:38` - `FHE.allowGlobal(result);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:41` - `FHE.allowGlobal(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:71` - `FHE.allowGlobal(lastPullAmount);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:72` - `FHE.allowGlobal(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:73` - `FHE.allowGlobal(lastReserveAddition);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:93` - `FHE.allowGlobal(lastObfuscationFactor);`

### allowThis

- `<FHENIX_REPO>/contracts/Airdrop.sol:44` - `FHE.allowThis(AIRDROP_AMOUNT);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:128` - `FHE.allowThis(minObfuscationFactor);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:129` - `FHE.allowThis(obfuscationFactorStep);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:201` - `FHE.allowThis(reserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:202` - `FHE.allowThis(reserveB);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:56` - `FHE.allowThis(minObfuscationFactor);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:57` - `FHE.allowThis(obfuscationFactorStep);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:69` - `FHE.allowThis(minObfuscationFactor);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:70` - `FHE.allowThis(obfuscationFactorStep);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:40` - `FHE.allowThis(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:67` - `FHE.allowThis(lastPullAmount);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:68` - `FHE.allowThis(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:69` - `FHE.allowThis(lastReserveAddition);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:92` - `FHE.allowThis(lastObfuscationFactor);`

### allowTransient

- `<FHENIX_REPO>/contracts/EPOOL.sol:184` - `FHE.allowTransient(amountAOut, address(assetA));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:185` - `FHE.allowTransient(amountBOut, address(assetB));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:459` - `FHE.allowTransient(refund, address(inputAsset));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:463` - `FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:521` - `FHE.allowTransient(amount, address(token));`

### and

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:244` - `ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEuint128

- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:111` - `euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:179` - `euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:181` - `amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`

### asEuint64

- `<FHENIX_REPO>/contracts/Airdrop.sol:43` - `AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:245` - `euint64 amountA = FHE.asEuint64(amountAExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:246` - `euint64 amountB = FHE.asEuint64(amountBExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:293` - `euint64 amountA = FHE.asEuint64(amountAExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:294` - `euint64 amountB = FHE.asEuint64(amountBExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:332` - `euint64 sharesToRemove = FHE.asEuint64(sharesToRemoveExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:377` - `euint64 amountIn = FHE.asEuint64(amountInExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:378` - `euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:398` - `euint64 amountIn = FHE.asEuint64(amountInExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:399` - `euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:54` - `minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:55` - `obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:67` - `minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:68` - `obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `<FHENIX_REPO>/contracts/TransferHelper.sol:9` - `euint64 encryptedAmount = FHE.asEuint64(amount);`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:181` - `amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:239` - `ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:249` - `euint64 zero = FHE.asEuint64(0);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:37` - `euint64 effectiveIn = FHE.asEuint64(effectiveInExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:53` - `euint64 amountIn = FHE.asEuint64(amountInExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:54` - `euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:88` - `euint64 minFactor = FHE.asEuint64(minFactorExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:89` - `euint64 step = FHE.asEuint64(stepExt);`

### decrypt

- `<FHENIX_REPO>/contracts/EPOOL.sol:158` - `FHE.decrypt(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:159` - `FHE.decrypt(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:160` - `FHE.decrypt(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:482` - `FHE.decrypt(reserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:483` - `FHE.decrypt(reserveB);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:42` - `FHE.decrypt(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:75` - `FHE.decrypt(lastPullAmount);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:76` - `FHE.decrypt(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:77` - `FHE.decrypt(lastReserveAddition);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:94` - `FHE.decrypt(lastObfuscationFactor);`

### div

- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:181` - `amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### getDecryptResultSafe

- `<FHENIX_REPO>/contracts/EPOOL.sol:271` - `(uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:272` - `(uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:273` - `(uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:414` - `(uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:415` - `(uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:503` - `(uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:504` - `(uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:505` - `(uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:29` - `///   against the pool's current obfuscated ciphertext handles (via FHE.getDecryptResultSafe).`

### gt

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:239` - `ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`

### le

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:238` - `// ebool withinTaylor = FHE.le(effectiveIn, uint64(maxEffectiveIn));`

### lt

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:243` - `ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### min

- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:115` - `euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `<FHENIX_REPO>/contracts/EPOOL.sol:149` - `obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:150` - `obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:151` - `obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:37` - `euint64 result = FHE.mul(a, b);`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:179` - `euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### not

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:239` - `ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:243` - `ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### randomEuint16

- `<FHENIX_REPO>/contracts/TestFHE.sol:16` - `lastRandom16 = FHE.randomEuint16();`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:37` - `euint16 seed = FHE.randomEuint16();`

### randomEuint64

- `<FHENIX_REPO>/contracts/TestFHE.sol:23` - `lastRandom64 = FHE.randomEuint64();`

### select

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:250` - `euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:252` - `result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`

### shr

- `<FHENIX_REPO>/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`

### sol

- `<FHENIX_REPO>/contracts/Airdrop.sol:19` - `import {FHE, euint16, euint32, euint64, euint128, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/EPOOL.sol:20` - `import {FHE, euint16, euint32, euint64, euint128, ebool, InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:20` - `import {FHE, euint64, InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/TestFHE.sol:4` - `import {FHE, euint16, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/TransferHelper.sol:4` - `import {FHE, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/UniversalRouterHelper.sol:17` - `import {FHE, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/interfaces/ICERC20.sol:16` - `import {euint64, InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/interfaces/IPositionNFT.sol:16` - `import {euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:16` - `import {FHE, euint16, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/libraries/EPoolTypes.sol:16` - `import {euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:16` - `import {FHE, euint64, euint128, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:16` - `import {FHE, euint64, euint128, InEuint64, ebool} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/mocks/EPoolReentrantHook.sol:16` - `import {InEuint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`
- `<FHENIX_REPO>/contracts/tokens/CERC20.sol:17` - `import {FHE, InEuint64, euint64} from "@fhenixprotocol/cofhe-contracts/FHE.sol";`

### sub

- `<FHENIX_REPO>/contracts/EPOOL.sol:456` - `euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:77` - `euint64 netA = FHE.sub(amountA, feeA);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:78` - `euint64 netB = FHE.sub(amountB, feeB);`

## Library Differences (Name-Level)

These are function names present only in one library. Use the full catalog in `references/fhe-ops-catalog.md` for signatures.

### Only in Zama FHEVM

- `_verifySignatures`
- `asEuint256`
- `checkSignatures`
- `cleanTransientStorage`
- `delegateUserDecryption`
- `delegateUserDecryptionWithoutExpiration`
- `delegateUserDecryptions`
- `delegateUserDecryptionsWithoutExpiration`
- `fromExternal`
- `ge`
- `getDelegatedUserDecryptionExpirationDate`
- `isAccountDenied`
- `isDelegatedForUserDecryption`
- `isInitialized`
- `isPubliclyDecryptable`
- `isSenderAllowed`
- `isUserDecryptable`
- `le`
- `makePubliclyDecryptable`
- `neg`
- `randEbool`
- `randEuint128`
- `randEuint16`
- `randEuint256`
- `randEuint32`
- `randEuint64`
- `randEuint8`
- `revokeUserDecryptionDelegation`
- `revokeUserDecryptionDelegations`
- `rotl`
- `rotr`
- `setCoprocessor`
- `toBytes32`

### Only in Fhenix CoFHE

- `allowGlobal`
- `allowSender`
- `decrypt`
- `getDecryptResult`
- `getDecryptResultSafe`
- `gte`
- `lte`
- `randomEuint128`
- `randomEuint16`
- `randomEuint32`
- `randomEuint64`
- `randomEuint8`
- `rol`
- `ror`
- `square`

## Cross-Protocol Notes

- Zama input verification uses `FHE.fromExternal` with an `inputProof`; Fhenix uses `FHE.asEuint*` on `InEuint*` inputs (see `references/fhe-signatures.md`).
- Zama public decryption proofs use `FHE.checkSignatures`; Fhenix uses on-chain `FHE.decrypt` + `FHE.getDecryptResultSafe` comparisons.
- Randomness APIs differ: Zama `randE*` vs Fhenix `randomE*` (see full catalog for signatures).
- Rotation naming differs: Zama `rotl/rotr` vs Fhenix `rol/ror`.
