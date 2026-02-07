# FHE Operations Usage Map (First-Party Contracts)

This file lists FHE operations used by first-party contracts only.
For full coverage including embedded vendor contracts, use `fhe-ops-usage-map.md`.

## Scope
- Zama excludes `contracts/openzeppelin-confidential-contracts/**`.
- Fhenix includes the full `contracts/**` tree (first-party in this repo).
- Commented-out code is excluded; only executable call sites are listed.

## Navigation
- Use `rg -n "^### <op>\$" skills/fhe-contracts/references/fhe-ops-usage-first-party.md` to jump to an operation.

## Zama FHEVM (first-party only)

### add

- `<ZAMA_REPO>/contracts/EPOOL.sol:223` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:42` - `        euint64 factor = FHE.add(offset, minFactor);`

### allow

- `<ZAMA_REPO>/contracts/Airdrop.sol:55` - `        FHE.allow(AIRDROP_AMOUNT, _token);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:100` - `        FHE.allow(minObfuscationFactor, pool);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:101` - `        FHE.allow(obfuscationFactorStep, pool);`
- `<ZAMA_REPO>/contracts/TransferHelper.sol:11` - `        FHE.allow(encryptedAmount, token);`
- `<ZAMA_REPO>/contracts/UniversalRouterHelper.sol:123` - `            FHE.allow(amounts[i], address(tokens[i]));`
- `<ZAMA_REPO>/contracts/UniversalRouterHelper.sol:124` - `            FHE.allow(amounts[i], spender);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:84` - `        FHE.allow(reportedAmount, msg.sender);`

### allowThis

- `<ZAMA_REPO>/contracts/Airdrop.sol:45` - `        FHE.allowThis(AIRDROP_AMOUNT);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:119` - `        FHE.allowThis(minObfuscationFactor);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:120` - `        FHE.allowThis(obfuscationFactorStep);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:145` - `        FHE.allowThis(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:146` - `        FHE.allowThis(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:147` - `        FHE.allowThis(obfuscatedStates.lpSupply);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:192` - `        FHE.allowThis(reserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:193` - `        FHE.allowThis(reserveB);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:59` - `        FHE.allowThis(minObfuscationFactor);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:60` - `        FHE.allowThis(obfuscationFactorStep);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:74` - `        FHE.allowThis(minObfuscationFactor);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:75` - `        FHE.allowThis(obfuscationFactorStep);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:42` - `        FHE.allowThis(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:69` - `        FHE.allowThis(lastPullAmount);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:70` - `        FHE.allowThis(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:71` - `        FHE.allowThis(lastReserveAddition);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:91` - `        FHE.allowThis(lastObfuscationFactor);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:83` - `        FHE.allowThis(reportedAmount);`

### allowTransient

- `<ZAMA_REPO>/contracts/EPOOL.sol:175` - `        FHE.allowTransient(amountAOut, address(assetA));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:176` - `        FHE.allowTransient(amountBOut, address(assetB));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:437` - `        FHE.allowTransient(refund, address(inputAsset));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:441` - `        FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:474` - `        FHE.allowTransient(amount, address(token));`

### and

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:242` - `        ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEuint128

- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:111` - `        euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`

### asEuint64

- `<ZAMA_REPO>/contracts/Airdrop.sol:44` - `        AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `<ZAMA_REPO>/contracts/TransferHelper.sol:10` - `        euint64 encryptedAmount = FHE.asEuint64(amount);`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:247` - `        euint64 zero = FHE.asEuint64(0);`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:35` - `            liquidity: FHE.asEuint64(0),`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:36` - `            token0Amount: FHE.asEuint64(0),`
- `<ZAMA_REPO>/contracts/mocks/PositionNFT.sol:37` - `            token1Amount: FHE.asEuint64(0),`
- `<ZAMA_REPO>/contracts/mocks/ReentrantERC7984.sol:35` - `        euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:36` - `        euint64 encryptedAmount = FHE.asEuint64(initialSupply);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:79` - `        euint64 reduction = FHE.asEuint64(underpaymentAmount);`
- `<ZAMA_REPO>/contracts/tokens/CERC20.sol:29` - `        euint64 encryptedAmount = FHE.asEuint64(amount);`

### checkSignatures

- `<ZAMA_REPO>/contracts/EPOOL.sol:253` - `        FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB, decryptedOL), OProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:397` - `        FHE.checkSignatures(cts, abi.encode(decryptedORA, decryptedORB), reserveProof);`

### div

- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, decryptedOL));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, uint128(SCALE)));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`

### fromExternal

- `<ZAMA_REPO>/contracts/EPOOL.sol:217` - `        euint64 amountA = FHE.fromExternal(amountAExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:218` - `        euint64 amountB = FHE.fromExternal(amountBExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:270` - `        euint64 amountA = FHE.fromExternal(amountAExt, amountProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:271` - `        euint64 amountB = FHE.fromExternal(amountBExt, amountProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:310` - `        euint64 sharesToRemove = FHE.fromExternal(sharesToRemoveExt, sharesProof);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:357` - `        euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:358` - `        euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:380` - `        euint64 amountIn = FHE.fromExternal(amountInExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:381` - `        euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proofIn);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:57` - `        minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:58` - `        obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:72` - `        minObfuscationFactor = FHE.fromExternal(_minObfuscationFactorExt, inputProof);`
- `<ZAMA_REPO>/contracts/EPoolFactory.sol:73` - `        obfuscationFactorStep = FHE.fromExternal(_obfuscationFactorStepExt, inputProof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:39` - `        euint64 effectiveIn = FHE.fromExternal(effectiveInExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:55` - `        euint64 amountIn = FHE.fromExternal(amountInExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:56` - `        euint64 minAmountOut = FHE.fromExternal(minAmountOutExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:87` - `        euint64 minFactor = FHE.fromExternal(minFactorExt, proof);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:88` - `        euint64 step = FHE.fromExternal(stepExt, proof);`

### ge

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:241` - `        ebool meetsSlippage = FHE.ge(amountOutRaw, minAmountOut);`

### isInitialized

- `<ZAMA_REPO>/contracts/EPOOL.sol:114` - `        require(FHE.isInitialized(minObfuscationFactor) == false, "EPOOL: obfuscation-already-initialized");`

### le

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:238` - `        ebool withinTaylor = FHE.le(effectiveIn, uint64(maxEffectiveIn));`

### makePubliclyDecryptable

- `<ZAMA_REPO>/contracts/EPOOL.sol:149` - `        FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:150` - `        FHE.makePubliclyDecryptable(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:151` - `        FHE.makePubliclyDecryptable(obfuscatedStates.lpSupply);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:458` - `        FHE.makePubliclyDecryptable(reserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:459` - `        FHE.makePubliclyDecryptable(reserveB);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:43` - `        FHE.makePubliclyDecryptable(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:73` - `        FHE.makePubliclyDecryptable(lastPullAmount);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:74` - `        FHE.makePubliclyDecryptable(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:75` - `        FHE.makePubliclyDecryptable(lastReserveAddition);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:92` - `        FHE.makePubliclyDecryptable(lastObfuscationFactor);`

### min

- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:115` - `        euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `<ZAMA_REPO>/contracts/EPOOL.sol:140` - `        obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:141` - `        obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:142` - `        obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), decryptedOL), decryptedORA));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), decryptedOL), decryptedORB));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORA);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), decryptedORB);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), uint64(BPS_DENOMINATOR));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:179` - `        euint128 result = FHE.mul(effectiveIn128, uint128(combinedCoeff));`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, effectiveMultiplier), BPS);`

### randEuint16

- `<ZAMA_REPO>/contracts/libraries/EPoolObfuscationLib.sol:37` - `        euint16 seed = FHE.randEuint16();`

### select

- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:248` - `        euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `<ZAMA_REPO>/contracts/libraries/SwapLib.sol:250` - `        result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`

### shr

- `<ZAMA_REPO>/contracts/EPOOL.sol:223` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, 1), FHE.shr(pulledAmountB, 1));`

### sub

- `<ZAMA_REPO>/contracts/EPOOL.sol:434` - `        euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:77` - `        euint64 netA = FHE.sub(amountA, feeA);`
- `<ZAMA_REPO>/contracts/libraries/LiquidityLib.sol:78` - `        euint64 netB = FHE.sub(amountB, feeB);`
- `<ZAMA_REPO>/contracts/mocks/UnderpayingERC7984.sol:80` - `        euint64 reportedAmount = FHE.sub(actualTransferred, reduction);`

### toBytes32

- `<ZAMA_REPO>/contracts/EPOOL.sol:250` - `        cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:251` - `        cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:252` - `        cts[2] = FHE.toBytes32(obfuscatedStates.lpSupply);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:395` - `        cts[0] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:396` - `        cts[1] = FHE.toBytes32(obfuscatedStates.obfuscatedReserveB);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:447` - `        emit AtomicSwapExecuted(msg.sender, recipient, aForB, FHE.toBytes32(swap.amountOut));`
- `<ZAMA_REPO>/contracts/EPOOL.sol:460` - `        handleA = FHE.toBytes32(reserveA);`
- `<ZAMA_REPO>/contracts/EPOOL.sol:461` - `        handleB = FHE.toBytes32(reserveB);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:44` - `        return FHE.toBytes32(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:77` - `        pullHandle = FHE.toBytes32(lastPullAmount);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:78` - `        amountOutHandle = FHE.toBytes32(lastAmountOut);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:79` - `        reserveAdditionHandle = FHE.toBytes32(lastReserveAddition);`
- `<ZAMA_REPO>/contracts/mocks/EPoolMathHarness.sol:93` - `        return FHE.toBytes32(lastObfuscationFactor);`

## Fhenix CoFHE (first-party only)

### add

- `<FHENIX_REPO>/contracts/EPOOL.sol:222` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `<FHENIX_REPO>/contracts/TestFHE.sol:30` - `        euint64 result = FHE.add(a, b);`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:42` - `        euint64 factor = FHE.add(offset, minFactor);`

### allow

- `<FHENIX_REPO>/contracts/Airdrop.sol:54` - `        FHE.allow(AIRDROP_AMOUNT, _token);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:98` - `        FHE.allow(minObfuscationFactor, pool);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:99` - `        FHE.allow(obfuscationFactorStep, pool);`
- `<FHENIX_REPO>/contracts/TransferHelper.sol:10` - `        FHE.allow(encryptedAmount, token);`
- `<FHENIX_REPO>/contracts/UniversalRouterHelper.sol:123` - `            FHE.allow(amounts[i], address(tokens[i]));`
- `<FHENIX_REPO>/contracts/UniversalRouterHelper.sol:124` - `            FHE.allow(amounts[i], spender);`

### allowGlobal

- `<FHENIX_REPO>/contracts/EPOOL.sol:146` - `        FHE.allowGlobal(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:147` - `        FHE.allowGlobal(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:148` - `        FHE.allowGlobal(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:436` - `        FHE.allowGlobal(reserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:437` - `        FHE.allowGlobal(reserveB);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:17` - `        FHE.allowGlobal(lastRandom16);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:24` - `        FHE.allowGlobal(lastRandom64);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:31` - `        FHE.allowGlobal(result);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:38` - `        FHE.allowGlobal(result);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:41` - `        FHE.allowGlobal(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:71` - `        FHE.allowGlobal(lastPullAmount);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:72` - `        FHE.allowGlobal(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:73` - `        FHE.allowGlobal(lastReserveAddition);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:93` - `        FHE.allowGlobal(lastObfuscationFactor);`

### allowThis

- `<FHENIX_REPO>/contracts/Airdrop.sol:44` - `        FHE.allowThis(AIRDROP_AMOUNT);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:120` - `        FHE.allowThis(minObfuscationFactor);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:121` - `        FHE.allowThis(obfuscationFactorStep);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:193` - `        FHE.allowThis(reserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:194` - `        FHE.allowThis(reserveB);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:56` - `        FHE.allowThis(minObfuscationFactor);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:57` - `        FHE.allowThis(obfuscationFactorStep);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:69` - `        FHE.allowThis(minObfuscationFactor);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:70` - `        FHE.allowThis(obfuscationFactorStep);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:40` - `        FHE.allowThis(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:67` - `        FHE.allowThis(lastPullAmount);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:68` - `        FHE.allowThis(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:69` - `        FHE.allowThis(lastReserveAddition);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:92` - `        FHE.allowThis(lastObfuscationFactor);`

### allowTransient

- `<FHENIX_REPO>/contracts/EPOOL.sol:176` - `        FHE.allowTransient(amountAOut, address(assetA));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:177` - `        FHE.allowTransient(amountBOut, address(assetB));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:415` - `        FHE.allowTransient(refund, address(inputAsset));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:419` - `        FHE.allowTransient(swap.amountOut, address(outputAsset));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:477` - `        FHE.allowTransient(amount, address(token));`

### and

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:244` - `        ebool swapAllowed = FHE.and(withinTaylor, meetsSlippage);`

### asEuint128

- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:111` - `        euint128 effectiveIn128 = FHE.asEuint128(effectiveIn);`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:179` - `        euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`

### asEuint64

- `<FHENIX_REPO>/contracts/Airdrop.sol:43` - `        AIRDROP_AMOUNT = FHE.asEuint64(100_000_000);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:216` - `        euint64 amountA = FHE.asEuint64(amountAExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:217` - `        euint64 amountB = FHE.asEuint64(amountBExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:222` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`
- `<FHENIX_REPO>/contracts/EPOOL.sol:260` - `        euint64 amountA = FHE.asEuint64(amountAExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:261` - `        euint64 amountB = FHE.asEuint64(amountBExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:296` - `        euint64 sharesToRemove = FHE.asEuint64(sharesToRemoveExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:337` - `        euint64 amountIn = FHE.asEuint64(amountInExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:338` - `        euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:356` - `        euint64 amountIn = FHE.asEuint64(amountInExt);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:357` - `        euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:54` - `        minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:55` - `        obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:67` - `        minObfuscationFactor = FHE.asEuint64(_minObfuscationFactorExt);`
- `<FHENIX_REPO>/contracts/EPoolFactory.sol:68` - `        obfuscationFactorStep = FHE.asEuint64(_obfuscationFactorStepExt);`
- `<FHENIX_REPO>/contracts/TransferHelper.sol:9` - `        euint64 encryptedAmount = FHE.asEuint64(amount);`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:239` - `        ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:249` - `        euint64 zero = FHE.asEuint64(0);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:37` - `        euint64 effectiveIn = FHE.asEuint64(effectiveInExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:53` - `        euint64 amountIn = FHE.asEuint64(amountInExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:54` - `        euint64 minAmountOut = FHE.asEuint64(minAmountOutExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:88` - `        euint64 minFactor = FHE.asEuint64(minFactorExt);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:89` - `        euint64 step = FHE.asEuint64(stepExt);`

### decrypt

- `<FHENIX_REPO>/contracts/EPOOL.sol:150` - `        FHE.decrypt(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:151` - `        FHE.decrypt(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:152` - `        FHE.decrypt(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:438` - `        FHE.decrypt(reserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:439` - `        FHE.decrypt(reserveB);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:42` - `        FHE.decrypt(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:75` - `        FHE.decrypt(lastPullAmount);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:76` - `        FHE.decrypt(lastAmountOut);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:77` - `        FHE.decrypt(lastReserveAddition);`
- `<FHENIX_REPO>/contracts/mocks/EPoolMathHarness.sol:94` - `        FHE.decrypt(lastObfuscationFactor);`

### div

- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:69` - `        euint64 amountA = FHE.asEuint64(FHE.div(amountADenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:70` - `        euint64 amountB = FHE.asEuint64(FHE.div(amountBDenom, FHE.asEuint128(decryptedOL)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:181` - `        amountOut = FHE.asEuint64(FHE.div(result, FHE.asEuint128(SCALE)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### getDecryptResultSafe

- `<FHENIX_REPO>/contracts/EPOOL.sol:239` - `        (uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:240` - `        (uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:241` - `        (uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:370` - `        (uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:371` - `        (uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:459` - `        (uint256 resultA, bool readyA) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveA);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:460` - `        (uint256 resultB, bool readyB) = FHE.getDecryptResultSafe(obfuscatedStates.obfuscatedReserveB);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:461` - `        (uint256 resultL, bool readyL) = FHE.getDecryptResultSafe(obfuscatedStates.lpSupply);`

### gt

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:239` - `        ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`

### lt

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:243` - `        ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### min

- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:116` - `        euint64 mintAmount = FHE.min(mintAmountA, mintAmountB);`

### mul

- `<FHENIX_REPO>/contracts/EPOOL.sol:141` - `        obfuscatedStates.obfuscatedReserveA = FHE.mul(reserveA, factor);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:142` - `        obfuscatedStates.obfuscatedReserveB = FHE.mul(reserveB, factor);`
- `<FHENIX_REPO>/contracts/EPOOL.sol:143` - `        obfuscatedStates.lpSupply = FHE.mul(confidentialTotalSupply(), factor);`
- `<FHENIX_REPO>/contracts/TestFHE.sol:37` - `        euint64 result = FHE.mul(a, b);`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:41` - `        euint64 offset = FHE.mul(FHE.asEuint64(seed), step);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:113` - `        euint64 mintAmountA = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountA), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORA)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:114` - `        euint64 mintAmountB = FHE.asEuint64(FHE.div(FHE.mul(FHE.asEuint128(pulledAmountB), FHE.asEuint128(decryptedOL)), FHE.asEuint128(decryptedORB)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:67` - `        euint128 amountADenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORA));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:68` - `        euint128 amountBDenom = FHE.mul(FHE.asEuint128(sentLP), FHE.asEuint128(decryptedORB));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:73` - `        euint64 feeA = FHE.div(FHE.mul(amountA, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:74` - `        euint64 feeB = FHE.div(FHE.mul(amountB, FHE.asEuint64(uint64(WITHDRAWAL_FEE_BPS))), FHE.asEuint64(uint64(BPS_DENOMINATOR)));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:179` - `        euint128 result = FHE.mul(effectiveIn128, FHE.asEuint128(combinedCoeff));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:225` - `            effectiveIn = FHE.div(FHE.mul(amountIn, FHE.asEuint64(effectiveMultiplier)), FHE.asEuint64(BPS));`

### not

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:239` - `        ebool withinTaylor = FHE.not(FHE.gt(effectiveIn, FHE.asEuint64(uint64(maxEffectiveIn))));`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:243` - `        ebool meetsSlippage = FHE.not(FHE.lt(amountOutRaw, minAmountOut));`

### randomEuint16

- `<FHENIX_REPO>/contracts/TestFHE.sol:16` - `        lastRandom16 = FHE.randomEuint16();`
- `<FHENIX_REPO>/contracts/libraries/EPoolObfuscationLib.sol:37` - `        euint16 seed = FHE.randomEuint16();`

### randomEuint64

- `<FHENIX_REPO>/contracts/TestFHE.sol:23` - `        lastRandom64 = FHE.randomEuint64();`

### select

- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:250` - `        euint64 selectedAmountIn = FHE.select(swapAllowed, amountIn, zero);`
- `<FHENIX_REPO>/contracts/libraries/SwapLib.sol:252` - `        result.amountOut = FHE.select(swapAllowed, amountOutRaw, zero);`

### shr

- `<FHENIX_REPO>/contracts/EPOOL.sol:222` - `        euint64 liquidityAmount = FHE.add(FHE.shr(pulledAmountA, FHE.asEuint64(1)), FHE.shr(pulledAmountB, FHE.asEuint64(1)));`

### sub

- `<FHENIX_REPO>/contracts/EPOOL.sol:412` - `        euint64 refund = FHE.sub(pulledAmount, swap.pullAmount);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:77` - `        euint64 netA = FHE.sub(amountA, feeA);`
- `<FHENIX_REPO>/contracts/libraries/LiquidityLib.sol:78` - `        euint64 netB = FHE.sub(amountB, feeB);`

## Refresh
```bash
rg -n "FHE\.[A-Za-z0-9_]+\(" <ZAMA_REPO>/contracts -g '!**/openzeppelin-confidential-contracts/**'
rg -n "FHE\.[A-Za-z0-9_]+\(" <FHENIX_REPO>/contracts
```
