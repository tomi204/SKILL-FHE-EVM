# FHE Operations Usage Map (Contract References)

This file lists every FHE operation used in the contracts for each protocol, with exact file/line references.
Use it when you need proof that an op is in use or want to navigate to the implementation quickly.

## Zama FHEVM Contract Ops

### add

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:252` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:42` - `euint64 factor = FHE.add(offset, minFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:85` - `euint128 newReleasedAmount = FHE.add(released(token), amountSent);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:98` - `_vestingSchedule(FHE.add(released(token), IERC7984(token).confidentialBalanceOf(address(this))), timestamp);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:299` - `ptr = FHE.add(_balances[to], transferred);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:24` - `euint64 newValue = FHE.add(oldValue, delta);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:57` - `euint64 sum = FHE.add(a, b);`

### allow

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:55` - `FHE.allow(AIRDROP_AMOUNT, _token);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:100` - `FHE.allow(minObfuscationFactor, pool);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:101` - `FHE.allow(obfuscationFactorStep, pool);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/TransferHelper.sol:11` - `FHE.allow(encryptedAmount, token);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/UniversalRouterHelper.sol:123` - `FHE.allow(amounts[i], address(tokens[i]));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/UniversalRouterHelper.sol:124` - `FHE.allow(amounts[i], spender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:84` - `FHE.allow(reportedAmount, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:86` - `FHE.allow(newReleasedAmount, owner());`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:26` - `FHE.allow(encryptedAmount, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:34` - `FHE.allow(encryptedAddr, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:42` - `FHE.allow(confidentialTotalSupply(), _OWNER);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:15` - `FHE.allow(handle, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:22` - `FHE.allow(success, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:26` - `FHE.allow(updated, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:35` - `FHE.allow(success, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:39` - `FHE.allow(updated, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:48` - `FHE.allow(success, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:52` - `FHE.allow(sum, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:61` - `FHE.allow(success, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:65` - `FHE.allow(difference, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerMock.sol:15` - `FHE.allow(handle, address(this));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:288` - `FHE.allow(ptr, from);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:301` - `FHE.allow(ptr, to);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:305` - `if (from != address(0)) FHE.allow(transferred, from);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:306` - `if (to != address(0)) FHE.allow(transferred, to);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:37` - `FHE.allow(amount, account);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:53` - `FHE.allow(encryptedAmount, account);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:32` - `FHE.allow(balanceHandle, newObserver);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:52` - `FHE.allow(confidentialBalanceOf(from), fromObserver);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:53` - `FHE.allow(transferred, fromObserver);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:56` - `FHE.allow(confidentialBalanceOf(to), toObserver);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:58` - `FHE.allow(transferred, toObserver);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:170` - `FHE.allow(sender, omnibusFrom);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:171` - `FHE.allow(sender, omnibusTo);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:174` - `FHE.allow(recipient, omnibusFrom);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:175` - `FHE.allow(recipient, omnibusTo);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:192` - `FHE.allow(sender, omnibusFrom);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:193` - `FHE.allow(sender, omnibusTo);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:196` - `FHE.allow(recipient, omnibusFrom);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:197` - `FHE.allow(recipient, omnibusTo);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:202` - `FHE.allow(transferred, omnibusFrom);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:203` - `FHE.allow(transferred, omnibusTo);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:122` - `FHE.allow(mintedAmount, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:133` - `FHE.allow(mintedAmount, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:144` - `FHE.allow(burntAmount, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:155` - `FHE.allow(burntAmount, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:227` - `FHE.allow(transferred, msg.sender);`

### allowThis

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:45` - `FHE.allowThis(AIRDROP_AMOUNT);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:127` - `FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:128` - `FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:153` - `FHE.allowThis(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:154` - `FHE.allowThis(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:155` - `FHE.allowThis(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:200` - `FHE.allowThis(reserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:201` - `FHE.allowThis(reserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:59` - `FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:60` - `FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:74` - `FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:75` - `FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:42` - `FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:69` - `FHE.allowThis(lastPullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:70` - `FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:71` - `FHE.allowThis(lastReserveAddition);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:91` - `FHE.allowThis(lastObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:83` - `FHE.allowThis(reportedAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:87` - `FHE.allowThis(newReleasedAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984FreezableMock.sol:36` - `FHE.allowThis(available);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:25` - `FHE.allowThis(encryptedAmount = FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:33` - `FHE.allowThis(encryptedAddr);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:14` - `FHE.allowThis(handle);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:21` - `FHE.allowThis(success);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:25` - `FHE.allowThis(updated);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:34` - `FHE.allowThis(success);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:38` - `FHE.allowThis(updated);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:47` - `FHE.allowThis(success);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:51` - `FHE.allowThis(sum);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:60` - `FHE.allowThis(success);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:64` - `FHE.allowThis(difference);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:281` - `FHE.allowThis(ptr);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:287` - `FHE.allowThis(ptr);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:296` - `FHE.allowThis(ptr);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:300` - `FHE.allowThis(ptr);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:307` - `FHE.allowThis(transferred);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:36` - `FHE.allowThis(amount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:52` - `FHE.allowThis(encryptedAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:169` - `FHE.allowThis(sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:173` - `FHE.allowThis(recipient);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:191` - `FHE.allowThis(sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:195` - `FHE.allowThis(recipient);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:201` - `FHE.allowThis(transferred);`

### allowTransient

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:183` - `FHE.allowTransient(amountAOut, address(assetA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:184` - `FHE.allowTransient(amountBOut, address(assetB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:470` - `FHE.allowTransient(refund, address(inputAsset));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:474` - `FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:507` - `FHE.allowTransient(amount, address(token));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:81` - `FHE.allowTransient(amount, token);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidentialFactory.sol:58` - `FHE.allowTransient(encryptedAmount, token);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:23` - `FHE.allowTransient(amount, address(_fromToken));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:18` - `FHE.allowTransient(amount, address(fromToken));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:21` - `FHE.allowTransient(amountTransferred, address(toToken));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReceiverMock.sol:23` - `FHE.allowTransient(returnVal, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:138` - `FHE.allowTransient(transferred, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:150` - `FHE.allowTransient(transferred, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:161` - `FHE.allowTransient(transferred, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:172` - `FHE.allowTransient(transferred, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:185` - `FHE.allowTransient(transferred, msg.sender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:198` - `FHE.allowTransient(transferred, msg.sender);`

### and

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:179` - `ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEaddress

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:32` - `eaddress encryptedAddr = FHE.asEaddress(addr);`

### asEbool

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984ReceiverMock.sol:22` - `ebool returnVal = FHE.asEbool(success);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/utils/ERC7984Utils.sol:44` - `return FHE.asEbool(true);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:22` - `return (FHE.asEbool(true), delta);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:37` - `return (FHE.asEbool(true), oldValue);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:51` - `return (FHE.asEbool(true), b);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:54` - `return (FHE.asEbool(true), a);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:68` - `return (FHE.asEbool(true), a);`

### asEuint128

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:99` - `euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`

### asEuint64

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:44` - `AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/TransferHelper.sol:10` - `euint64 encryptedAmount = FHE.asEuint64(amount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:118` - `amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:184` - `euint64 zero = FHE.asEuint64(0);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:35` - `liquidity: FHE.asEuint64(0),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:36` - `token0Amount: FHE.asEuint64(0),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:37` - `token1Amount: FHE.asEuint64(0),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/ReentrantERC7984.sol:35` - `euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:36` - `euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:79` - `euint64 reduction = FHE.asEuint64(underpaymentAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:25` - `FHE.allowThis(encryptedAmount = FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:54` - `return _mint(to, FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:11` - `_mint(to, FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:15` - `_burn(from, FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RestrictedMock.sol:19` - `_transfer(msg.sender, to, FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984RwaMock.sol:36` - `_setConfidentialFrozen(account, FHE.asEuint64(amount));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:13` - `handle = FHE.asEuint64(amount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/HandleAccessManagerMock.sol:14` - `euint64 handle = FHE.asEuint64(amount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:271` - `euint64 refund = _update(to, from, FHE.select(success, FHE.asEuint64(0), sent));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:292` - `transferred = FHE.select(success, amount, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:82` - `_mint(to, FHE.asEuint64(SafeCast.toUint64(amount / rate())));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:102` - `_mint(to, FHE.asEuint64(SafeCast.toUint64(amount / rate())));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:47` - `return FHE.select(success, unfrozen, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:70` - `encryptedAmount = FHE.select(FHE.le(encryptedAmount, unfrozen), encryptedAmount, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:39` - `return (FHE.eq(delta, 0), FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:59` - `res = FHE.select(success, sum, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:73` - `res = FHE.select(success, difference, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/tokens/CERC20.sol:29` - `euint64 encryptedAmount = FHE.asEuint64(amount);`

### checkSignatures

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:283` - `FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB, decryptedOL), OProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:430` - `FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB), reserveProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:29` - `///   against the pool's current obfuscated ciphertext handles (via FHE.checkSignatures).`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:34` - `FHE.checkSignatures(handles, abi.encode(cleartextAmount), decryptionProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:233` - `FHE.checkSignatures(handles, cleartextMemory, decryptionProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:145` - `FHE.checkSignatures(handles, cleartexts, decryptionProof);`

### div

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:118` - `amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:162` - `effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:132` - `return FHE.div(FHE.mul(totalAllocation, (timestamp - start())), duration());`

### eq

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:76` - `// This tests the guard: FHE.eq(pulledAmount, swap.pullAmount)`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:39` - `return (FHE.eq(delta, 0), FHE.asEuint64(0));`

### fromExternal

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:246` - `euint64 amountA = FHE.fromExternal(amountAExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:247` - `euint64 amountB = FHE.fromExternal(amountBExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:300` - `euint64 amountA = FHE.fromExternal(amountAExt, amountProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:301` - `euint64 amountB = FHE.fromExternal(amountBExt, amountProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:342` - `euint64 sharesToRemove = FHE.fromExternal(sharesToRemoveExt, sharesProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:390` - `euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:391` - `euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:413` - `euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:414` - `euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:57` - `minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:58` - `obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:72` - `minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:73` - `obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:39` - `euint64 effectiveIn = FHE.fromExternal(effectiveInExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:55` - `euint64 amountIn = FHE.fromExternal(amountInExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:56` - `euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:87` - `euint64 minFactor = FHE.fromExternal(minFactorExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:88` - `euint64 step = FHE.fromExternal(stepExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidentialFactory.sol:57` - `euint64 encryptedAmount = FHE.fromExternal(vestingPlan.encryptedAmount, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/ERC7984MintableBurnable.sol:17` - `_mint(to, FHE.fromExternal(amount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/ERC7984MintableBurnable.sol:21` - `_burn(from, FHE.fromExternal(amount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:22` - `euint64 amount = FHE.fromExternal(encryptedInput, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC7984.sol:16` - `euint64 amount = FHE.fromExternal(amountInput, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984FreezableMock.sol:31` - `_setConfidentialFrozen(account, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:50` - `return _mint(to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:63` - `return _transfer(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:73` - `return _transferAndCall(from, to, FHE.fromExternal(encryptedAmount, inputProof), data);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:81` - `return _burn(from, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/token/ERC7984Mock.sol:90` - `return _update(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:120` - `return _transfer(msg.sender, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:137` - `transferred = _transfer(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:160` - `transferred = _transferAndCall(msg.sender, to, FHE.fromExternal(encryptedAmount, inputProof), data);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:184` - `transferred = _transferAndCall(from, to, FHE.fromExternal(encryptedAmount, inputProof), data);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:127` - `_unwrap(from, to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:76` - `eaddress sender = FHE.fromExternal(externalSender, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:77` - `eaddress recipient = FHE.fromExternal(externalRecipient, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:78` - `euint64 amount = FHE.fromExternal(externalAmount, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:139` - `eaddress sender = FHE.fromExternal(externalSender, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:140` - `eaddress recipient = FHE.fromExternal(externalRecipient, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:141` - `euint64 amount = FHE.fromExternal(externalAmount, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:103` - `_setConfidentialFrozen(account, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:121` - `euint64 mintedAmount = _mint(to, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:143` - `euint64 burntAmount = _burn(account, FHE.fromExternal(encryptedAmount, inputProof));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:166` - `return _forceUpdate(from, to, FHE.fromExternal(encryptedAmount, inputProof));`

### ge

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:178` - `ebool meetsSlippage = FHE.ge(amountOutRaw, minAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:70` - `ebool success = FHE.ge(vestedAmount_, releasedAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:25` - `success = FHE.ge(newValue, oldValue);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:41` - `success = FHE.ge(oldValue, delta);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:58` - `success = FHE.ge(sum, a);`

### isAllowed

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:125` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:147` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:170` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:195` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:210` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:113` - `require(FHE.isAllowed(amount, msg.sender), ERC7984UnauthorizedUseOfEncryptedAmount(amount, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:91` - `require(FHE.isAllowed(sender, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(sender, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:92` - `require(FHE.isAllowed(recipient, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(recipient, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:155` - `require(FHE.isAllowed(sender, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(sender, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Omnibus.sol:156` - `require(FHE.isAllowed(recipient, msg.sender), ERC7984UnauthorizedUseOfEncryptedAddress(recipient, msg.sender));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:109` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:129` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:151` - `FHE.isAllowed(encryptedAmount, msg.sender),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Rwa.sol:180` - `FHE.isAllowed(encryptedAmount, msg.sender),`

### isInitialized

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:122` - `require(FHE.isInitialized(minObfuscationFactor) == false, "EPOOL: obfuscation-already-initialized");`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/governance/utils/VotesConfidential.sol:182` - `if (from != to && FHE.isInitialized(amount)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:24` - `if (FHE.isInitialized(updated)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:37` - `if (FHE.isInitialized(updated)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:50` - `if (FHE.isInitialized(sum)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/utils/FHESafeMathMock.sol:63` - `if (FHE.isInitialized(difference)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:285` - `require(FHE.isInitialized(fromBalance), ERC7984ZeroBalance(from));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ObserverAccess.sol:31` - `if (FHE.isInitialized(balanceHandle)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:21` - `if (!FHE.isInitialized(oldValue)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:35` - `if (!FHE.isInitialized(oldValue)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:36` - `if (!FHE.isInitialized(delta)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:50` - `if (!FHE.isInitialized(a)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:53` - `if (!FHE.isInitialized(b)) {`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:67` - `if (!FHE.isInitialized(b)) {`

### le

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:175` - `ebool withinTaylor = FHE.le(effectiveIn, uint64(maxEffectiveIn));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:70` - `encryptedAmount = FHE.select(FHE.le(encryptedAmount, unfrozen), encryptedAmount, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:72` - `success = FHE.le(difference, a);`

### makePubliclyDecryptable

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:157` - `FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:158` - `FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:159` - `FHE.makePubliclyDecryptable(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:491` - `FHE.makePubliclyDecryptable(reserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:492` - `FHE.makePubliclyDecryptable(reserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:43` - `FHE.makePubliclyDecryptable(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:73` - `FHE.makePubliclyDecryptable(lastPullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:74` - `FHE.makePubliclyDecryptable(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:75` - `FHE.makePubliclyDecryptable(lastReserveAddition);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:92` - `FHE.makePubliclyDecryptable(lastObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/docs/SwapERC7984ToERC20.sol:26` - `FHE.makePubliclyDecryptable(amountTransferred);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:214` - `FHE.makePubliclyDecryptable(encryptedAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984ERC20Wrapper.sol:158` - `FHE.makePubliclyDecryptable(burntAmount);`

### min

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:115` - `euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:148` - `obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:149` - `obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:150` - `obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:102` - `euint128 linearTerm = FHE.mul(effectiveIn128, uint128(priceScaled));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:113` - `euint128 quadTerm = FHE.mul(effectiveIn128, uint128(conservativeCoeff));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:162` - `effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:132` - `return FHE.div(FHE.mul(totalAllocation, (timestamp - start())), duration());`

### randEuint16

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:37` - `euint16 seed = FHE.randEuint16();`

### select

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:185` - `euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:187` - `result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:271` - `euint64 refund = _update(to, from, FHE.select(success, FHE.asEuint64(0), sent));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:292` - `transferred = FHE.select(success, amount, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:47` - `return FHE.select(success, unfrozen, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/extensions/ERC7984Freezable.sol:70` - `encryptedAmount = FHE.select(FHE.le(encryptedAmount, unfrozen), encryptedAmount, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:26` - `updated = FHE.select(success, newValue, oldValue);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:42` - `updated = FHE.select(success, FHE.sub(oldValue, delta), oldValue);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:59` - `res = FHE.select(success, sum, FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:73` - `res = FHE.select(success, difference, FHE.asEuint64(0));`

### setCoprocessor

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/mocks/finance/VestingWalletConfidentialFactoryMock.sol:68` - `FHE.setCoprocessor(ZamaConfig.getEthereumCoprocessorConfig());`

### shr

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:252` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:252` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`

### sol

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

### sub

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:467` - `euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:77` - `euint64 netA = FHE.sub(amountA, feeA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:78` - `euint64 netB = FHE.sub(amountB, feeB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:117` - `euint128 result = FHE.sub(linearTerm, quadTerm);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:80` - `euint64 reportedAmount = FHE.sub(actualTransferred, reduction);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/finance/VestingWalletConfidential.sol:71` - `return FHE.select(success, FHE.asEuint64(FHE.sub(vestedAmount_, releasedAmount)), FHE.asEuint64(0));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:272` - `transferred = FHE.sub(sent, refund);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/token/ERC7984/ERC7984.sol:295` - `ptr = FHE.sub(_totalSupply, transferred);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:42` - `updated = FHE.select(success, FHE.sub(oldValue, delta), oldValue);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/openzeppelin-confidential-contracts/contracts/utils/FHESafeMath.sol:71` - `euint64 difference = FHE.sub(a, b);`

### toBytes32

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:280` - `cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:281` - `cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:282` - `cts[2] = FHE.toBytes32(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:363` - `//emit WithdrawalFeeCollected(tokenId, FHE.toBytes32(feeA), FHE.toBytes32(feeB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:363` - `//emit WithdrawalFeeCollected(tokenId, FHE.toBytes32(feeA), FHE.toBytes32(feeB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:428` - `cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:429` - `cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:480` - `emit AtomicSwapExecuted(msg.sender, recipient, aForB, FHE.toBytes32(swap.amountOut));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:493` - `handleA = FHE.toBytes32(reserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:494` - `handleB = FHE.toBytes32(reserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:521` - `FHE.toBytes32(reserveA),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:522` - `FHE.toBytes32(reserveB),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:44` - `return FHE.toBytes32(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:77` - `pullHandle = FHE.toBytes32(lastPullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:78` - `amountOutHandle = FHE.toBytes32(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:79` - `reserveAdditionHandle = FHE.toBytes32(lastReserveAddition);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:93` - `return FHE.toBytes32(lastObfuscationFactor);`

## Fhenix CoFHE Contract Ops

### add

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:30` - `euint64 result = FHE.add(a, b);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:42` - `euint64 factor = FHE.add(offset, minFactor);`

### allow

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:54` - `FHE.allow(AIRDROP_AMOUNT, _token);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:98` - `FHE.allow(minObfuscationFactor, pool);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:99` - `FHE.allow(obfuscationFactorStep, pool);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TransferHelper.sol:10` - `FHE.allow(encryptedAmount, token);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/UniversalRouterHelper.sol:123` - `FHE.allow(amounts[i], address(tokens[i]));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/UniversalRouterHelper.sol:124` - `FHE.allow(amounts[i], spender);`

### allowGlobal

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:154` - `FHE.allowGlobal(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:155` - `FHE.allowGlobal(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:156` - `FHE.allowGlobal(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:480` - `FHE.allowGlobal(reserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:481` - `FHE.allowGlobal(reserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:17` - `FHE.allowGlobal(lastRandom16);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:24` - `FHE.allowGlobal(lastRandom64);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:31` - `FHE.allowGlobal(result);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:38` - `FHE.allowGlobal(result);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:41` - `FHE.allowGlobal(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:71` - `FHE.allowGlobal(lastPullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:72` - `FHE.allowGlobal(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:73` - `FHE.allowGlobal(lastReserveAddition);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:93` - `FHE.allowGlobal(lastObfuscationFactor);`

### allowThis

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:44` - `FHE.allowThis(AIRDROP_AMOUNT);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:128` - `FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:129` - `FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:201` - `FHE.allowThis(reserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:202` - `FHE.allowThis(reserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:56` - `FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:57` - `FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:69` - `FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:70` - `FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:40` - `FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:67` - `FHE.allowThis(lastPullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:68` - `FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:69` - `FHE.allowThis(lastReserveAddition);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:92` - `FHE.allowThis(lastObfuscationFactor);`

### allowTransient

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:184` - `FHE.allowTransient(amountAOut, address(assetA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:185` - `FHE.allowTransient(amountBOut, address(assetB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:459` - `FHE.allowTransient(refund, address(inputAsset));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:463` - `FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:521` - `FHE.allowTransient(amount, address(token));`

### and

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:244` - `ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEuint128

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:111` - `euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:179` - `euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:181` - `amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`

### asEuint64

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:43` - `AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:245` - `euint64 amountA = FHE.asEuint64(amountAExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:246` - `euint64 amountB = FHE.asEuint64(amountBExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:293` - `euint64 amountA = FHE.asEuint64(amountAExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:294` - `euint64 amountB = FHE.asEuint64(amountBExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:332` - `euint64 sharesToRemove = FHE.asEuint64(sharesToRemoveExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:377` - `euint64 amountIn = FHE.asEuint64(amountInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:378` - `euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:398` - `euint64 amountIn = FHE.asEuint64(amountInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:399` - `euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:54` - `minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:55` - `obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:67` - `minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:68` - `obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TransferHelper.sol:9` - `euint64 encryptedAmount = FHE.asEuint64(amount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:181` - `amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:239` - `ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:249` - `euint64 zero = FHE.asEuint64(0);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:37` - `euint64 effectiveIn = FHE.asEuint64(effectiveInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:53` - `euint64 amountIn = FHE.asEuint64(amountInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:54` - `euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:88` - `euint64 minFactor = FHE.asEuint64(minFactorExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:89` - `euint64 step = FHE.asEuint64(stepExt);`

### decrypt

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:158` - `FHE.decrypt(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:159` - `FHE.decrypt(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:160` - `FHE.decrypt(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:482` - `FHE.decrypt(reserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:483` - `FHE.decrypt(reserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:42` - `FHE.decrypt(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:75` - `FHE.decrypt(lastPullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:76` - `FHE.decrypt(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:77` - `FHE.decrypt(lastReserveAddition);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:94` - `FHE.decrypt(lastObfuscationFactor);`

### div

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:69` - `euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:70` - `euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:181` - `amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### getDecryptResultSafe

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:271` - `(uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:272` - `(uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:273` - `(uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:414` - `(uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:415` - `(uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:503` - `(uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:504` - `(uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:505` - `(uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:29` - `///   against the pool's current obfuscated ciphertext handles (via FHE.getDecryptResultSafe).`

### gt

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:239` - `ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`

### le

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:238` - `// ebool withinTaylor = FHE.le(effectiveIn, uint64(maxEffectiveIn));`

### lt

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:243` - `ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### min

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:115` - `euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:149` - `obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:150` - `obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:151` - `obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:37` - `euint64 result = FHE.mul(a, b);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:41` - `euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:67` - `euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:68` - `euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:179` - `euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### not

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:239` - `ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:243` - `ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### randomEuint16

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:16` - `lastRandom16 = FHE.randomEuint16();`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:37` - `euint16 seed = FHE.randomEuint16();`

### randomEuint64

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:23` - `lastRandom64 = FHE.randomEuint64();`

### select

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:250` - `euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:252` - `result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`

### shr

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:251` - `euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`

### sol

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

### sub

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:456` - `euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:77` - `euint64 netA = FHE.sub(amountA, feeA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:78` - `euint64 netB = FHE.sub(amountB, feeB);`

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
