# FHE Operations Usage Map (First-Party Contracts)

This file lists FHE operations used by first-party contracts only.
For full coverage including embedded vendor contracts, use `fhe-ops-usage-map.md`.

## Scope
- Zama excludes `contracts/openzeppelin-confidential-contracts/**`.
- Fhenix includes the full `contracts/**` tree (first-party in this repo).
- Commented-out code is excluded; only executable call sites are listed.

## Navigation
- Use `rg -n "^### <op>\$" /Users/tomas/Documents/New project/skills/fhe-contracts/references/fhe-ops-usage-first-party.md` to jump to an operation.

## Zama FHEVM (first-party only)

### add

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:223` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:42` - `        euint64 factor = FHE.add(offset, minFactor);`

### allow

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:55` - `        FHE.allow(AIRDROP_AMOUNT, _token);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:100` - `        FHE.allow(minObfuscationFactor, pool);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:101` - `        FHE.allow(obfuscationFactorStep, pool);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/TransferHelper.sol:11` - `        FHE.allow(encryptedAmount, token);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/UniversalRouterHelper.sol:123` - `            FHE.allow(amounts[i], address(tokens[i]));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/UniversalRouterHelper.sol:124` - `            FHE.allow(amounts[i], spender);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:84` - `        FHE.allow(reportedAmount, msg.sender);`

### allowThis

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:45` - `        FHE.allowThis(AIRDROP_AMOUNT);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:119` - `        FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:120` - `        FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:145` - `        FHE.allowThis(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:146` - `        FHE.allowThis(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:147` - `        FHE.allowThis(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:192` - `        FHE.allowThis(reserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:193` - `        FHE.allowThis(reserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:59` - `        FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:60` - `        FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:74` - `        FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:75` - `        FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:42` - `        FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:69` - `        FHE.allowThis(lastPullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:70` - `        FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:71` - `        FHE.allowThis(lastReserveAddition);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:91` - `        FHE.allowThis(lastObfuscationFactor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:83` - `        FHE.allowThis(reportedAmount);`

### allowTransient

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:175` - `        FHE.allowTransient(amountAOut, address(assetA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:176` - `        FHE.allowTransient(amountBOut, address(assetB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:437` - `        FHE.allowTransient(refund, address(inputAsset));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:441` - `        FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:474` - `        FHE.allowTransient(amount, address(token));`

### and

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:242` - `        ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEuint128

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:111` - `        euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`

### asEuint64

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/Airdrop.sol:44` - `        AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/TransferHelper.sol:10` - `        euint64 encryptedAmount = FHE.asEuint64(amount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:247` - `        euint64 zero = FHE.asEuint64(0);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:35` - `            liquidity: FHE.asEuint64(0),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:36` - `            token0Amount: FHE.asEuint64(0),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/PositionNFT.sol:37` - `            token1Amount: FHE.asEuint64(0),`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/ReentrantERC7984.sol:35` - `        euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:36` - `        euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:79` - `        euint64 reduction = FHE.asEuint64(underpaymentAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/tokens/CERC20.sol:29` - `        euint64 encryptedAmount = FHE.asEuint64(amount);`

### checkSignatures

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:253` - `        FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB, decryptedOL), OProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:397` - `        FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB), reserveProof);`

### div

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`

### fromExternal

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:217` - `        euint64 amountA = FHE.fromExternal(amountAExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:218` - `        euint64 amountB = FHE.fromExternal(amountBExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:270` - `        euint64 amountA = FHE.fromExternal(amountAExt, amountProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:271` - `        euint64 amountB = FHE.fromExternal(amountBExt, amountProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:310` - `        euint64 sharesToRemove = FHE.fromExternal(sharesToRemoveExt, sharesProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:357` - `        euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:358` - `        euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:380` - `        euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:381` - `        euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:57` - `        minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:58` - `        obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:72` - `        minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPoolFactory.sol:73` - `        obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:39` - `        euint64 effectiveIn = FHE.fromExternal(effectiveInExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:55` - `        euint64 amountIn = FHE.fromExternal(amountInExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:56` - `        euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:87` - `        euint64 minFactor = FHE.fromExternal(minFactorExt, proof);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:88` - `        euint64 step = FHE.fromExternal(stepExt, proof);`

### ge

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:241` - `        ebool meetsSlippage = FHE.ge(amountOutRaw, minAmountOut);`

### isInitialized

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:114` - `        require(FHE.isInitialized(minObfuscationFactor) == false, "EPOOL: obfuscation-already-initialized");`

### le

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:238` - `        ebool withinTaylor = FHE.le(effectiveIn, uint64(maxEffectiveIn));`

### makePubliclyDecryptable

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:149` - `        FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:150` - `        FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:151` - `        FHE.makePubliclyDecryptable(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:458` - `        FHE.makePubliclyDecryptable(reserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:459` - `        FHE.makePubliclyDecryptable(reserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:43` - `        FHE.makePubliclyDecryptable(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:73` - `        FHE.makePubliclyDecryptable(lastPullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:74` - `        FHE.makePubliclyDecryptable(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:75` - `        FHE.makePubliclyDecryptable(lastReserveAddition);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:92` - `        FHE.makePubliclyDecryptable(lastObfuscationFactor);`

### min

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:115` - `        euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:140` - `        obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:141` - `        obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:142` - `        obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:179` - `        euint128 result = FHE.mul(effectiveIn128, uint128(combinedCoeff));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`

### randEuint16

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/EPoolObfuscationLib.sol:37` - `        euint16 seed = FHE.randEuint16();`

### select

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:248` - `        euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/SwapLib.sol:250` - `        result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`

### shr

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:223` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`

### sub

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:434` - `        euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:77` - `        euint64 netA = FHE.sub(amountA, feeA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/libraries/LiquidityLib.sol:78` - `        euint64 netB = FHE.sub(amountB, feeB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/UnderpayingERC7984.sol:80` - `        euint64 reportedAmount = FHE.sub(actualTransferred, reduction);`

### toBytes32

- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:250` - `        cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:251` - `        cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:252` - `        cts[2] = FHE.toBytes32(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:395` - `        cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:396` - `        cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:447` - `        emit AtomicSwapExecuted(msg.sender, recipient, aForB, FHE.toBytes32(swap.amountOut));`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:460` - `        handleA = FHE.toBytes32(reserveA);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/EPOOL.sol:461` - `        handleB = FHE.toBytes32(reserveB);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:44` - `        return FHE.toBytes32(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:77` - `        pullHandle = FHE.toBytes32(lastPullAmount);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:78` - `        amountOutHandle = FHE.toBytes32(lastAmountOut);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:79` - `        reserveAdditionHandle = FHE.toBytes32(lastReserveAddition);`
- `/Users/tomas/zama/contracts/fhevm-hardhat-template/contracts/mocks/EPoolMathHarness.sol:93` - `        return FHE.toBytes32(lastObfuscationFactor);`

## Fhenix CoFHE (first-party only)

### add

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:222` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:30` - `        euint64 result = FHE.add(a, b);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:42` - `        euint64 factor = FHE.add(offset, minFactor);`

### allow

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:54` - `        FHE.allow(AIRDROP_AMOUNT, _token);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:98` - `        FHE.allow(minObfuscationFactor, pool);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:99` - `        FHE.allow(obfuscationFactorStep, pool);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TransferHelper.sol:10` - `        FHE.allow(encryptedAmount, token);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/UniversalRouterHelper.sol:123` - `            FHE.allow(amounts[i], address(tokens[i]));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/UniversalRouterHelper.sol:124` - `            FHE.allow(amounts[i], spender);`

### allowGlobal

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:146` - `        FHE.allowGlobal(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:147` - `        FHE.allowGlobal(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:148` - `        FHE.allowGlobal(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:436` - `        FHE.allowGlobal(reserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:437` - `        FHE.allowGlobal(reserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:17` - `        FHE.allowGlobal(lastRandom16);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:24` - `        FHE.allowGlobal(lastRandom64);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:31` - `        FHE.allowGlobal(result);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:38` - `        FHE.allowGlobal(result);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:41` - `        FHE.allowGlobal(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:71` - `        FHE.allowGlobal(lastPullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:72` - `        FHE.allowGlobal(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:73` - `        FHE.allowGlobal(lastReserveAddition);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:93` - `        FHE.allowGlobal(lastObfuscationFactor);`

### allowThis

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:44` - `        FHE.allowThis(AIRDROP_AMOUNT);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:120` - `        FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:121` - `        FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:193` - `        FHE.allowThis(reserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:194` - `        FHE.allowThis(reserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:56` - `        FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:57` - `        FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:69` - `        FHE.allowThis(minObfuscationFactor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:70` - `        FHE.allowThis(obfuscationFactorStep);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:40` - `        FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:67` - `        FHE.allowThis(lastPullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:68` - `        FHE.allowThis(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:69` - `        FHE.allowThis(lastReserveAddition);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:92` - `        FHE.allowThis(lastObfuscationFactor);`

### allowTransient

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:176` - `        FHE.allowTransient(amountAOut, address(assetA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:177` - `        FHE.allowTransient(amountBOut, address(assetB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:415` - `        FHE.allowTransient(refund, address(inputAsset));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:419` - `        FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:477` - `        FHE.allowTransient(amount, address(token));`

### and

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:244` - `        ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEuint128

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:111` - `        euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:179` - `        euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`

### asEuint64

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/Airdrop.sol:43` - `        AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:216` - `        euint64 amountA = FHE.asEuint64(amountAExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:217` - `        euint64 amountB = FHE.asEuint64(amountBExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:222` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:260` - `        euint64 amountA = FHE.asEuint64(amountAExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:261` - `        euint64 amountB = FHE.asEuint64(amountBExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:296` - `        euint64 sharesToRemove = FHE.asEuint64(sharesToRemoveExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:337` - `        euint64 amountIn = FHE.asEuint64(amountInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:338` - `        euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:356` - `        euint64 amountIn = FHE.asEuint64(amountInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:357` - `        euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:54` - `        minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:55` - `        obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:67` - `        minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPoolFactory.sol:68` - `        obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TransferHelper.sol:9` - `        euint64 encryptedAmount = FHE.asEuint64(amount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:239` - `        ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:249` - `        euint64 zero = FHE.asEuint64(0);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:37` - `        euint64 effectiveIn = FHE.asEuint64(effectiveInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:53` - `        euint64 amountIn = FHE.asEuint64(amountInExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:54` - `        euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:88` - `        euint64 minFactor = FHE.asEuint64(minFactorExt);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:89` - `        euint64 step = FHE.asEuint64(stepExt);`

### decrypt

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:150` - `        FHE.decrypt(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:151` - `        FHE.decrypt(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:152` - `        FHE.decrypt(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:438` - `        FHE.decrypt(reserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:439` - `        FHE.decrypt(reserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:42` - `        FHE.decrypt(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:75` - `        FHE.decrypt(lastPullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:76` - `        FHE.decrypt(lastAmountOut);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:77` - `        FHE.decrypt(lastReserveAddition);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/mocks/EPoolMathHarness.sol:94` - `        FHE.decrypt(lastObfuscationFactor);`

### div

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### getDecryptResultSafe

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:239` - `        (uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:240` - `        (uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:241` - `        (uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:370` - `        (uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:371` - `        (uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:459` - `        (uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:460` - `        (uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:461` - `        (uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`

### gt

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:239` - `        ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`

### lt

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:243` - `        ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### min

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:116` - `        euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:141` - `        obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:142` - `        obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:143` - `        obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:37` - `        euint64 result = FHE.mul(a, b);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:179` - `        euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### not

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:239` - `        ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:243` - `        ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### randomEuint16

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:16` - `        lastRandom16 = FHE.randomEuint16();`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/EPoolObfuscationLib.sol:37` - `        euint16 seed = FHE.randomEuint16();`

### randomEuint64

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/TestFHE.sol:23` - `        lastRandom64 = FHE.randomEuint64();`

### select

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:250` - `        euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/SwapLib.sol:252` - `        result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`

### shr

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:222` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`

### sub

- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/EPOOL.sol:412` - `        euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:77` - `        euint64 netA = FHE.sub(amountA, feeA);`
- `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts/libraries/LiquidityLib.sol:78` - `        euint64 netB = FHE.sub(amountB, feeB);`

## Refresh
```bash
rg -n "FHE\.[A-Za-z0-9_]+\(" /Users/tomas/zama/contracts/fhevm-hardhat-template/contracts -g '!**/openzeppelin-confidential-contracts/**'
rg -n "FHE\.[A-Za-z0-9_]+\(" /Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/contracts
```
