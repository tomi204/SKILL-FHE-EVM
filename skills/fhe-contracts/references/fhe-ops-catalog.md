# FHE Operations Catalog (Library Definitions)

This file enumerates every function exposed by the installed FHE libraries for Zama FHEVM and Fhenix CoFHE.
It is the authoritative "all operations" list for agents and should be used when you need to confirm whether
an operation exists, which encrypted types it supports, and what it returns.

## Sources (local library files)
- Zama FHEVM: `/Users/tomas/zama/contracts/fhevm-hardhat-template/node_modules/@fhevm/solidity/lib/FHE.sol`
- Fhenix CoFHE: `/Users/tomas/zama/fhenix-contracts/cofhe-hardhat-starter/node_modules/@fhenixprotocol/cofhe-contracts/FHE.sol`

## Refresh
If the libraries update, re-generate this catalog by parsing the two source files above and rewriting this file.
A minimal approach is to scan for `function` lines inside `library FHE` and list the normalized signatures.

## Zama FHEVM

### add

- `add(euint128,euint128) -> (euint128)`
- `add(euint128,euint16) -> (euint128)`
- `add(euint128,euint32) -> (euint128)`
- `add(euint128,euint64) -> (euint128)`
- `add(euint128,euint8) -> (euint128)`
- `add(euint128,uint128) -> (euint128)`
- `add(euint16,euint128) -> (euint128)`
- `add(euint16,euint16) -> (euint16)`
- `add(euint16,euint32) -> (euint32)`
- `add(euint16,euint64) -> (euint64)`
- `add(euint16,euint8) -> (euint16)`
- `add(euint16,uint16) -> (euint16)`
- `add(euint32,euint128) -> (euint128)`
- `add(euint32,euint16) -> (euint32)`
- `add(euint32,euint32) -> (euint32)`
- `add(euint32,euint64) -> (euint64)`
- `add(euint32,euint8) -> (euint32)`
- `add(euint32,uint32) -> (euint32)`
- `add(euint64,euint128) -> (euint128)`
- `add(euint64,euint16) -> (euint64)`
- `add(euint64,euint32) -> (euint64)`
- `add(euint64,euint64) -> (euint64)`
- `add(euint64,euint8) -> (euint64)`
- `add(euint64,uint64) -> (euint64)`
- `add(euint8,euint128) -> (euint128)`
- `add(euint8,euint16) -> (euint16)`
- `add(euint8,euint32) -> (euint32)`
- `add(euint8,euint64) -> (euint64)`
- `add(euint8,euint8) -> (euint8)`
- `add(euint8,uint8) -> (euint8)`
- `add(uint128,euint128) -> (euint128)`
- `add(uint16,euint16) -> (euint16)`
- `add(uint32,euint32) -> (euint32)`
- `add(uint64,euint64) -> (euint64)`
- `add(uint8,euint8) -> (euint8)`

### allow

- `allow(eaddress,address) -> (eaddress)`
- `allow(ebool,address) -> (ebool)`
- `allow(euint128,address) -> (euint128)`
- `allow(euint16,address) -> (euint16)`
- `allow(euint256,address) -> (euint256)`
- `allow(euint32,address) -> (euint32)`
- `allow(euint64,address) -> (euint64)`
- `allow(euint8,address) -> (euint8)`

### allowThis

- `allowThis(eaddress) -> (eaddress)`
- `allowThis(ebool) -> (ebool)`
- `allowThis(euint128) -> (euint128)`
- `allowThis(euint16) -> (euint16)`
- `allowThis(euint256) -> (euint256)`
- `allowThis(euint32) -> (euint32)`
- `allowThis(euint64) -> (euint64)`
- `allowThis(euint8) -> (euint8)`

### allowTransient

- `allowTransient(eaddress,address) -> (eaddress)`
- `allowTransient(ebool,address) -> (ebool)`
- `allowTransient(euint128,address) -> (euint128)`
- `allowTransient(euint16,address) -> (euint16)`
- `allowTransient(euint256,address) -> (euint256)`
- `allowTransient(euint32,address) -> (euint32)`
- `allowTransient(euint64,address) -> (euint64)`
- `allowTransient(euint8,address) -> (euint8)`

### and

- `and(bool,ebool) -> (ebool)`
- `and(ebool,bool) -> (ebool)`
- `and(ebool,ebool) -> (ebool)`
- `and(euint128,euint128) -> (euint128)`
- `and(euint128,euint16) -> (euint128)`
- `and(euint128,euint256) -> (euint256)`
- `and(euint128,euint32) -> (euint128)`
- `and(euint128,euint64) -> (euint128)`
- `and(euint128,euint8) -> (euint128)`
- `and(euint128,uint128) -> (euint128)`
- `and(euint16,euint128) -> (euint128)`
- `and(euint16,euint16) -> (euint16)`
- `and(euint16,euint256) -> (euint256)`
- `and(euint16,euint32) -> (euint32)`
- `and(euint16,euint64) -> (euint64)`
- `and(euint16,euint8) -> (euint16)`
- `and(euint16,uint16) -> (euint16)`
- `and(euint256,euint128) -> (euint256)`
- `and(euint256,euint16) -> (euint256)`
- `and(euint256,euint256) -> (euint256)`
- `and(euint256,euint32) -> (euint256)`
- `and(euint256,euint64) -> (euint256)`
- `and(euint256,euint8) -> (euint256)`
- `and(euint256,uint256) -> (euint256)`
- `and(euint32,euint128) -> (euint128)`
- `and(euint32,euint16) -> (euint32)`
- `and(euint32,euint256) -> (euint256)`
- `and(euint32,euint32) -> (euint32)`
- `and(euint32,euint64) -> (euint64)`
- `and(euint32,euint8) -> (euint32)`
- `and(euint32,uint32) -> (euint32)`
- `and(euint64,euint128) -> (euint128)`
- `and(euint64,euint16) -> (euint64)`
- `and(euint64,euint256) -> (euint256)`
- `and(euint64,euint32) -> (euint64)`
- `and(euint64,euint64) -> (euint64)`
- `and(euint64,euint8) -> (euint64)`
- `and(euint64,uint64) -> (euint64)`
- `and(euint8,euint128) -> (euint128)`
- `and(euint8,euint16) -> (euint16)`
- `and(euint8,euint256) -> (euint256)`
- `and(euint8,euint32) -> (euint32)`
- `and(euint8,euint64) -> (euint64)`
- `and(euint8,euint8) -> (euint8)`
- `and(euint8,uint8) -> (euint8)`
- `and(uint128,euint128) -> (euint128)`
- `and(uint16,euint16) -> (euint16)`
- `and(uint256,euint256) -> (euint256)`
- `and(uint32,euint32) -> (euint32)`
- `and(uint64,euint64) -> (euint64)`
- `and(uint8,euint8) -> (euint8)`

### asEaddress

- `asEaddress(address) -> (eaddress)`

### asEbool

- `asEbool(bool) -> (ebool)`
- `asEbool(euint128) -> (ebool)`
- `asEbool(euint16) -> (ebool)`
- `asEbool(euint256) -> (ebool)`
- `asEbool(euint32) -> (ebool)`
- `asEbool(euint64) -> (ebool)`
- `asEbool(euint8) -> (ebool)`

### asEuint128

- `asEuint128(ebool) -> (euint128)`
- `asEuint128(euint16) -> (euint128)`
- `asEuint128(euint256) -> (euint128)`
- `asEuint128(euint32) -> (euint128)`
- `asEuint128(euint64) -> (euint128)`
- `asEuint128(euint8) -> (euint128)`
- `asEuint128(uint128) -> (euint128)`

### asEuint16

- `asEuint16(ebool) -> (euint16)`
- `asEuint16(euint128) -> (euint16)`
- `asEuint16(euint256) -> (euint16)`
- `asEuint16(euint32) -> (euint16)`
- `asEuint16(euint64) -> (euint16)`
- `asEuint16(euint8) -> (euint16)`
- `asEuint16(uint16) -> (euint16)`

### asEuint256

- `asEuint256(ebool) -> (euint256)`
- `asEuint256(euint128) -> (euint256)`
- `asEuint256(euint16) -> (euint256)`
- `asEuint256(euint32) -> (euint256)`
- `asEuint256(euint64) -> (euint256)`
- `asEuint256(euint8) -> (euint256)`
- `asEuint256(uint256) -> (euint256)`

### asEuint32

- `asEuint32(ebool) -> (euint32)`
- `asEuint32(euint128) -> (euint32)`
- `asEuint32(euint16) -> (euint32)`
- `asEuint32(euint256) -> (euint32)`
- `asEuint32(euint64) -> (euint32)`
- `asEuint32(euint8) -> (euint32)`
- `asEuint32(uint32) -> (euint32)`

### asEuint64

- `asEuint64(ebool) -> (euint64)`
- `asEuint64(euint128) -> (euint64)`
- `asEuint64(euint16) -> (euint64)`
- `asEuint64(euint256) -> (euint64)`
- `asEuint64(euint32) -> (euint64)`
- `asEuint64(euint8) -> (euint64)`
- `asEuint64(uint64) -> (euint64)`

### asEuint8

- `asEuint8(ebool) -> (euint8)`
- `asEuint8(euint128) -> (euint8)`
- `asEuint8(euint16) -> (euint8)`
- `asEuint8(euint256) -> (euint8)`
- `asEuint8(euint32) -> (euint8)`
- `asEuint8(euint64) -> (euint8)`
- `asEuint8(uint8) -> (euint8)`

### cleanTransientStorage

- `cleanTransientStorage()`

### delegateUserDecryption

- `delegateUserDecryption(address,address,uint64)`

### delegateUserDecryptionWithoutExpiration

- `delegateUserDecryptionWithoutExpiration(address,address)`

### delegateUserDecryptionsWithoutExpiration

- `delegateUserDecryptionsWithoutExpiration(address,address[])`

### div

- `div(euint128,uint128) -> (euint128)`
- `div(euint16,uint16) -> (euint16)`
- `div(euint32,uint32) -> (euint32)`
- `div(euint64,uint64) -> (euint64)`
- `div(euint8,uint8) -> (euint8)`

### eq

- `eq(address,eaddress) -> (ebool)`
- `eq(bool,ebool) -> (ebool)`
- `eq(eaddress,address) -> (ebool)`
- `eq(eaddress,eaddress) -> (ebool)`
- `eq(ebool,bool) -> (ebool)`
- `eq(ebool,ebool) -> (ebool)`
- `eq(euint128,euint128) -> (ebool)`
- `eq(euint128,euint16) -> (ebool)`
- `eq(euint128,euint256) -> (ebool)`
- `eq(euint128,euint32) -> (ebool)`
- `eq(euint128,euint64) -> (ebool)`
- `eq(euint128,euint8) -> (ebool)`
- `eq(euint128,uint128) -> (ebool)`
- `eq(euint16,euint128) -> (ebool)`
- `eq(euint16,euint16) -> (ebool)`
- `eq(euint16,euint256) -> (ebool)`
- `eq(euint16,euint32) -> (ebool)`
- `eq(euint16,euint64) -> (ebool)`
- `eq(euint16,euint8) -> (ebool)`
- `eq(euint16,uint16) -> (ebool)`
- `eq(euint256,euint128) -> (ebool)`
- `eq(euint256,euint16) -> (ebool)`
- `eq(euint256,euint256) -> (ebool)`
- `eq(euint256,euint32) -> (ebool)`
- `eq(euint256,euint64) -> (ebool)`
- `eq(euint256,euint8) -> (ebool)`
- `eq(euint256,uint256) -> (ebool)`
- `eq(euint32,euint128) -> (ebool)`
- `eq(euint32,euint16) -> (ebool)`
- `eq(euint32,euint256) -> (ebool)`
- `eq(euint32,euint32) -> (ebool)`
- `eq(euint32,euint64) -> (ebool)`
- `eq(euint32,euint8) -> (ebool)`
- `eq(euint32,uint32) -> (ebool)`
- `eq(euint64,euint128) -> (ebool)`
- `eq(euint64,euint16) -> (ebool)`
- `eq(euint64,euint256) -> (ebool)`
- `eq(euint64,euint32) -> (ebool)`
- `eq(euint64,euint64) -> (ebool)`
- `eq(euint64,euint8) -> (ebool)`
- `eq(euint64,uint64) -> (ebool)`
- `eq(euint8,euint128) -> (ebool)`
- `eq(euint8,euint16) -> (ebool)`
- `eq(euint8,euint256) -> (ebool)`
- `eq(euint8,euint32) -> (ebool)`
- `eq(euint8,euint64) -> (ebool)`
- `eq(euint8,euint8) -> (ebool)`
- `eq(euint8,uint8) -> (ebool)`
- `eq(uint128,euint128) -> (ebool)`
- `eq(uint16,euint16) -> (ebool)`
- `eq(uint256,euint256) -> (ebool)`
- `eq(uint32,euint32) -> (ebool)`
- `eq(uint64,euint64) -> (ebool)`
- `eq(uint8,euint8) -> (ebool)`

### fromExternal

- `fromExternal(externalEaddress,bytes) -> (eaddress)`
- `fromExternal(externalEbool,bytes) -> (ebool)`
- `fromExternal(externalEuint128,bytes) -> (euint128)`
- `fromExternal(externalEuint16,bytes) -> (euint16)`
- `fromExternal(externalEuint256,bytes) -> (euint256)`
- `fromExternal(externalEuint32,bytes) -> (euint32)`
- `fromExternal(externalEuint64,bytes) -> (euint64)`
- `fromExternal(externalEuint8,bytes) -> (euint8)`

### ge

- `ge(euint128,euint128) -> (ebool)`
- `ge(euint128,euint16) -> (ebool)`
- `ge(euint128,euint32) -> (ebool)`
- `ge(euint128,euint64) -> (ebool)`
- `ge(euint128,euint8) -> (ebool)`
- `ge(euint128,uint128) -> (ebool)`
- `ge(euint16,euint128) -> (ebool)`
- `ge(euint16,euint16) -> (ebool)`
- `ge(euint16,euint32) -> (ebool)`
- `ge(euint16,euint64) -> (ebool)`
- `ge(euint16,euint8) -> (ebool)`
- `ge(euint16,uint16) -> (ebool)`
- `ge(euint32,euint128) -> (ebool)`
- `ge(euint32,euint16) -> (ebool)`
- `ge(euint32,euint32) -> (ebool)`
- `ge(euint32,euint64) -> (ebool)`
- `ge(euint32,euint8) -> (ebool)`
- `ge(euint32,uint32) -> (ebool)`
- `ge(euint64,euint128) -> (ebool)`
- `ge(euint64,euint16) -> (ebool)`
- `ge(euint64,euint32) -> (ebool)`
- `ge(euint64,euint64) -> (ebool)`
- `ge(euint64,euint8) -> (ebool)`
- `ge(euint64,uint64) -> (ebool)`
- `ge(euint8,euint128) -> (ebool)`
- `ge(euint8,euint16) -> (ebool)`
- `ge(euint8,euint32) -> (ebool)`
- `ge(euint8,euint64) -> (ebool)`
- `ge(euint8,euint8) -> (ebool)`
- `ge(euint8,uint8) -> (ebool)`
- `ge(uint128,euint128) -> (ebool)`
- `ge(uint16,euint16) -> (ebool)`
- `ge(uint32,euint32) -> (ebool)`
- `ge(uint64,euint64) -> (ebool)`
- `ge(uint8,euint8) -> (ebool)`

### gt

- `gt(euint128,euint128) -> (ebool)`
- `gt(euint128,euint16) -> (ebool)`
- `gt(euint128,euint32) -> (ebool)`
- `gt(euint128,euint64) -> (ebool)`
- `gt(euint128,euint8) -> (ebool)`
- `gt(euint128,uint128) -> (ebool)`
- `gt(euint16,euint128) -> (ebool)`
- `gt(euint16,euint16) -> (ebool)`
- `gt(euint16,euint32) -> (ebool)`
- `gt(euint16,euint64) -> (ebool)`
- `gt(euint16,euint8) -> (ebool)`
- `gt(euint16,uint16) -> (ebool)`
- `gt(euint32,euint128) -> (ebool)`
- `gt(euint32,euint16) -> (ebool)`
- `gt(euint32,euint32) -> (ebool)`
- `gt(euint32,euint64) -> (ebool)`
- `gt(euint32,euint8) -> (ebool)`
- `gt(euint32,uint32) -> (ebool)`
- `gt(euint64,euint128) -> (ebool)`
- `gt(euint64,euint16) -> (ebool)`
- `gt(euint64,euint32) -> (ebool)`
- `gt(euint64,euint64) -> (ebool)`
- `gt(euint64,euint8) -> (ebool)`
- `gt(euint64,uint64) -> (ebool)`
- `gt(euint8,euint128) -> (ebool)`
- `gt(euint8,euint16) -> (ebool)`
- `gt(euint8,euint32) -> (ebool)`
- `gt(euint8,euint64) -> (ebool)`
- `gt(euint8,euint8) -> (ebool)`
- `gt(euint8,uint8) -> (ebool)`
- `gt(uint128,euint128) -> (ebool)`
- `gt(uint16,euint16) -> (ebool)`
- `gt(uint32,euint32) -> (ebool)`
- `gt(uint64,euint64) -> (ebool)`
- `gt(uint8,euint8) -> (ebool)`

### isAccountDenied

- `isAccountDenied(address)`

### isAllowed

- `isAllowed(eaddress,address)`
- `isAllowed(ebool,address)`
- `isAllowed(euint128,address)`
- `isAllowed(euint16,address)`
- `isAllowed(euint256,address)`
- `isAllowed(euint32,address)`
- `isAllowed(euint64,address)`
- `isAllowed(euint8,address)`

### isInitialized

- `isInitialized(eaddress)`
- `isInitialized(ebool)`
- `isInitialized(euint128)`
- `isInitialized(euint16)`
- `isInitialized(euint256)`
- `isInitialized(euint32)`
- `isInitialized(euint64)`
- `isInitialized(euint8)`

### isPubliclyDecryptable

- `isPubliclyDecryptable(eaddress)`
- `isPubliclyDecryptable(ebool)`
- `isPubliclyDecryptable(euint128)`
- `isPubliclyDecryptable(euint16)`
- `isPubliclyDecryptable(euint256)`
- `isPubliclyDecryptable(euint32)`
- `isPubliclyDecryptable(euint64)`
- `isPubliclyDecryptable(euint8)`

### isSenderAllowed

- `isSenderAllowed(eaddress)`
- `isSenderAllowed(ebool)`
- `isSenderAllowed(euint128)`
- `isSenderAllowed(euint16)`
- `isSenderAllowed(euint256)`
- `isSenderAllowed(euint32)`
- `isSenderAllowed(euint64)`
- `isSenderAllowed(euint8)`

### isUserDecryptable

- `isUserDecryptable(bytes32,address,address)`

### le

- `le(euint128,euint128) -> (ebool)`
- `le(euint128,euint16) -> (ebool)`
- `le(euint128,euint32) -> (ebool)`
- `le(euint128,euint64) -> (ebool)`
- `le(euint128,euint8) -> (ebool)`
- `le(euint128,uint128) -> (ebool)`
- `le(euint16,euint128) -> (ebool)`
- `le(euint16,euint16) -> (ebool)`
- `le(euint16,euint32) -> (ebool)`
- `le(euint16,euint64) -> (ebool)`
- `le(euint16,euint8) -> (ebool)`
- `le(euint16,uint16) -> (ebool)`
- `le(euint32,euint128) -> (ebool)`
- `le(euint32,euint16) -> (ebool)`
- `le(euint32,euint32) -> (ebool)`
- `le(euint32,euint64) -> (ebool)`
- `le(euint32,euint8) -> (ebool)`
- `le(euint32,uint32) -> (ebool)`
- `le(euint64,euint128) -> (ebool)`
- `le(euint64,euint16) -> (ebool)`
- `le(euint64,euint32) -> (ebool)`
- `le(euint64,euint64) -> (ebool)`
- `le(euint64,euint8) -> (ebool)`
- `le(euint64,uint64) -> (ebool)`
- `le(euint8,euint128) -> (ebool)`
- `le(euint8,euint16) -> (ebool)`
- `le(euint8,euint32) -> (ebool)`
- `le(euint8,euint64) -> (ebool)`
- `le(euint8,euint8) -> (ebool)`
- `le(euint8,uint8) -> (ebool)`
- `le(uint128,euint128) -> (ebool)`
- `le(uint16,euint16) -> (ebool)`
- `le(uint32,euint32) -> (ebool)`
- `le(uint64,euint64) -> (ebool)`
- `le(uint8,euint8) -> (ebool)`

### lt

- `lt(euint128,euint128) -> (ebool)`
- `lt(euint128,euint16) -> (ebool)`
- `lt(euint128,euint32) -> (ebool)`
- `lt(euint128,euint64) -> (ebool)`
- `lt(euint128,euint8) -> (ebool)`
- `lt(euint128,uint128) -> (ebool)`
- `lt(euint16,euint128) -> (ebool)`
- `lt(euint16,euint16) -> (ebool)`
- `lt(euint16,euint32) -> (ebool)`
- `lt(euint16,euint64) -> (ebool)`
- `lt(euint16,euint8) -> (ebool)`
- `lt(euint16,uint16) -> (ebool)`
- `lt(euint32,euint128) -> (ebool)`
- `lt(euint32,euint16) -> (ebool)`
- `lt(euint32,euint32) -> (ebool)`
- `lt(euint32,euint64) -> (ebool)`
- `lt(euint32,euint8) -> (ebool)`
- `lt(euint32,uint32) -> (ebool)`
- `lt(euint64,euint128) -> (ebool)`
- `lt(euint64,euint16) -> (ebool)`
- `lt(euint64,euint32) -> (ebool)`
- `lt(euint64,euint64) -> (ebool)`
- `lt(euint64,euint8) -> (ebool)`
- `lt(euint64,uint64) -> (ebool)`
- `lt(euint8,euint128) -> (ebool)`
- `lt(euint8,euint16) -> (ebool)`
- `lt(euint8,euint32) -> (ebool)`
- `lt(euint8,euint64) -> (ebool)`
- `lt(euint8,euint8) -> (ebool)`
- `lt(euint8,uint8) -> (ebool)`
- `lt(uint128,euint128) -> (ebool)`
- `lt(uint16,euint16) -> (ebool)`
- `lt(uint32,euint32) -> (ebool)`
- `lt(uint64,euint64) -> (ebool)`
- `lt(uint8,euint8) -> (ebool)`

### makePubliclyDecryptable

- `makePubliclyDecryptable(eaddress) -> (eaddress)`
- `makePubliclyDecryptable(ebool) -> (ebool)`
- `makePubliclyDecryptable(euint128) -> (euint128)`
- `makePubliclyDecryptable(euint16) -> (euint16)`
- `makePubliclyDecryptable(euint256) -> (euint256)`
- `makePubliclyDecryptable(euint32) -> (euint32)`
- `makePubliclyDecryptable(euint64) -> (euint64)`
- `makePubliclyDecryptable(euint8) -> (euint8)`

### max

- `max(euint128,euint128) -> (euint128)`
- `max(euint128,euint16) -> (euint128)`
- `max(euint128,euint32) -> (euint128)`
- `max(euint128,euint64) -> (euint128)`
- `max(euint128,euint8) -> (euint128)`
- `max(euint128,uint128) -> (euint128)`
- `max(euint16,euint128) -> (euint128)`
- `max(euint16,euint16) -> (euint16)`
- `max(euint16,euint32) -> (euint32)`
- `max(euint16,euint64) -> (euint64)`
- `max(euint16,euint8) -> (euint16)`
- `max(euint16,uint16) -> (euint16)`
- `max(euint32,euint128) -> (euint128)`
- `max(euint32,euint16) -> (euint32)`
- `max(euint32,euint32) -> (euint32)`
- `max(euint32,euint64) -> (euint64)`
- `max(euint32,euint8) -> (euint32)`
- `max(euint32,uint32) -> (euint32)`
- `max(euint64,euint128) -> (euint128)`
- `max(euint64,euint16) -> (euint64)`
- `max(euint64,euint32) -> (euint64)`
- `max(euint64,euint64) -> (euint64)`
- `max(euint64,euint8) -> (euint64)`
- `max(euint64,uint64) -> (euint64)`
- `max(euint8,euint128) -> (euint128)`
- `max(euint8,euint16) -> (euint16)`
- `max(euint8,euint32) -> (euint32)`
- `max(euint8,euint64) -> (euint64)`
- `max(euint8,euint8) -> (euint8)`
- `max(euint8,uint8) -> (euint8)`
- `max(uint128,euint128) -> (euint128)`
- `max(uint16,euint16) -> (euint16)`
- `max(uint32,euint32) -> (euint32)`
- `max(uint64,euint64) -> (euint64)`
- `max(uint8,euint8) -> (euint8)`

### min

- `min(euint128,euint128) -> (euint128)`
- `min(euint128,euint16) -> (euint128)`
- `min(euint128,euint32) -> (euint128)`
- `min(euint128,euint64) -> (euint128)`
- `min(euint128,euint8) -> (euint128)`
- `min(euint128,uint128) -> (euint128)`
- `min(euint16,euint128) -> (euint128)`
- `min(euint16,euint16) -> (euint16)`
- `min(euint16,euint32) -> (euint32)`
- `min(euint16,euint64) -> (euint64)`
- `min(euint16,euint8) -> (euint16)`
- `min(euint16,uint16) -> (euint16)`
- `min(euint32,euint128) -> (euint128)`
- `min(euint32,euint16) -> (euint32)`
- `min(euint32,euint32) -> (euint32)`
- `min(euint32,euint64) -> (euint64)`
- `min(euint32,euint8) -> (euint32)`
- `min(euint32,uint32) -> (euint32)`
- `min(euint64,euint128) -> (euint128)`
- `min(euint64,euint16) -> (euint64)`
- `min(euint64,euint32) -> (euint64)`
- `min(euint64,euint64) -> (euint64)`
- `min(euint64,euint8) -> (euint64)`
- `min(euint64,uint64) -> (euint64)`
- `min(euint8,euint128) -> (euint128)`
- `min(euint8,euint16) -> (euint16)`
- `min(euint8,euint32) -> (euint32)`
- `min(euint8,euint64) -> (euint64)`
- `min(euint8,euint8) -> (euint8)`
- `min(euint8,uint8) -> (euint8)`
- `min(uint128,euint128) -> (euint128)`
- `min(uint16,euint16) -> (euint16)`
- `min(uint32,euint32) -> (euint32)`
- `min(uint64,euint64) -> (euint64)`
- `min(uint8,euint8) -> (euint8)`

### mul

- `mul(euint128,euint128) -> (euint128)`
- `mul(euint128,euint16) -> (euint128)`
- `mul(euint128,euint32) -> (euint128)`
- `mul(euint128,euint64) -> (euint128)`
- `mul(euint128,euint8) -> (euint128)`
- `mul(euint128,uint128) -> (euint128)`
- `mul(euint16,euint128) -> (euint128)`
- `mul(euint16,euint16) -> (euint16)`
- `mul(euint16,euint32) -> (euint32)`
- `mul(euint16,euint64) -> (euint64)`
- `mul(euint16,euint8) -> (euint16)`
- `mul(euint16,uint16) -> (euint16)`
- `mul(euint32,euint128) -> (euint128)`
- `mul(euint32,euint16) -> (euint32)`
- `mul(euint32,euint32) -> (euint32)`
- `mul(euint32,euint64) -> (euint64)`
- `mul(euint32,euint8) -> (euint32)`
- `mul(euint32,uint32) -> (euint32)`
- `mul(euint64,euint128) -> (euint128)`
- `mul(euint64,euint16) -> (euint64)`
- `mul(euint64,euint32) -> (euint64)`
- `mul(euint64,euint64) -> (euint64)`
- `mul(euint64,euint8) -> (euint64)`
- `mul(euint64,uint64) -> (euint64)`
- `mul(euint8,euint128) -> (euint128)`
- `mul(euint8,euint16) -> (euint16)`
- `mul(euint8,euint32) -> (euint32)`
- `mul(euint8,euint64) -> (euint64)`
- `mul(euint8,euint8) -> (euint8)`
- `mul(euint8,uint8) -> (euint8)`
- `mul(uint128,euint128) -> (euint128)`
- `mul(uint16,euint16) -> (euint16)`
- `mul(uint32,euint32) -> (euint32)`
- `mul(uint64,euint64) -> (euint64)`
- `mul(uint8,euint8) -> (euint8)`

### ne

- `ne(address,eaddress) -> (ebool)`
- `ne(bool,ebool) -> (ebool)`
- `ne(eaddress,address) -> (ebool)`
- `ne(eaddress,eaddress) -> (ebool)`
- `ne(ebool,bool) -> (ebool)`
- `ne(ebool,ebool) -> (ebool)`
- `ne(euint128,euint128) -> (ebool)`
- `ne(euint128,euint16) -> (ebool)`
- `ne(euint128,euint256) -> (ebool)`
- `ne(euint128,euint32) -> (ebool)`
- `ne(euint128,euint64) -> (ebool)`
- `ne(euint128,euint8) -> (ebool)`
- `ne(euint128,uint128) -> (ebool)`
- `ne(euint16,euint128) -> (ebool)`
- `ne(euint16,euint16) -> (ebool)`
- `ne(euint16,euint256) -> (ebool)`
- `ne(euint16,euint32) -> (ebool)`
- `ne(euint16,euint64) -> (ebool)`
- `ne(euint16,euint8) -> (ebool)`
- `ne(euint16,uint16) -> (ebool)`
- `ne(euint256,euint128) -> (ebool)`
- `ne(euint256,euint16) -> (ebool)`
- `ne(euint256,euint256) -> (ebool)`
- `ne(euint256,euint32) -> (ebool)`
- `ne(euint256,euint64) -> (ebool)`
- `ne(euint256,euint8) -> (ebool)`
- `ne(euint256,uint256) -> (ebool)`
- `ne(euint32,euint128) -> (ebool)`
- `ne(euint32,euint16) -> (ebool)`
- `ne(euint32,euint256) -> (ebool)`
- `ne(euint32,euint32) -> (ebool)`
- `ne(euint32,euint64) -> (ebool)`
- `ne(euint32,euint8) -> (ebool)`
- `ne(euint32,uint32) -> (ebool)`
- `ne(euint64,euint128) -> (ebool)`
- `ne(euint64,euint16) -> (ebool)`
- `ne(euint64,euint256) -> (ebool)`
- `ne(euint64,euint32) -> (ebool)`
- `ne(euint64,euint64) -> (ebool)`
- `ne(euint64,euint8) -> (ebool)`
- `ne(euint64,uint64) -> (ebool)`
- `ne(euint8,euint128) -> (ebool)`
- `ne(euint8,euint16) -> (ebool)`
- `ne(euint8,euint256) -> (ebool)`
- `ne(euint8,euint32) -> (ebool)`
- `ne(euint8,euint64) -> (ebool)`
- `ne(euint8,euint8) -> (ebool)`
- `ne(euint8,uint8) -> (ebool)`
- `ne(uint128,euint128) -> (ebool)`
- `ne(uint16,euint16) -> (ebool)`
- `ne(uint256,euint256) -> (ebool)`
- `ne(uint32,euint32) -> (ebool)`
- `ne(uint64,euint64) -> (ebool)`
- `ne(uint8,euint8) -> (ebool)`

### neg

- `neg(euint128) -> (euint128)`
- `neg(euint16) -> (euint16)`
- `neg(euint256) -> (euint256)`
- `neg(euint32) -> (euint32)`
- `neg(euint64) -> (euint64)`
- `neg(euint8) -> (euint8)`

### not

- `not(ebool) -> (ebool)`
- `not(euint128) -> (euint128)`
- `not(euint16) -> (euint16)`
- `not(euint256) -> (euint256)`
- `not(euint32) -> (euint32)`
- `not(euint64) -> (euint64)`
- `not(euint8) -> (euint8)`

### or

- `or(bool,ebool) -> (ebool)`
- `or(ebool,bool) -> (ebool)`
- `or(ebool,ebool) -> (ebool)`
- `or(euint128,euint128) -> (euint128)`
- `or(euint128,euint16) -> (euint128)`
- `or(euint128,euint256) -> (euint256)`
- `or(euint128,euint32) -> (euint128)`
- `or(euint128,euint64) -> (euint128)`
- `or(euint128,euint8) -> (euint128)`
- `or(euint128,uint128) -> (euint128)`
- `or(euint16,euint128) -> (euint128)`
- `or(euint16,euint16) -> (euint16)`
- `or(euint16,euint256) -> (euint256)`
- `or(euint16,euint32) -> (euint32)`
- `or(euint16,euint64) -> (euint64)`
- `or(euint16,euint8) -> (euint16)`
- `or(euint16,uint16) -> (euint16)`
- `or(euint256,euint128) -> (euint256)`
- `or(euint256,euint16) -> (euint256)`
- `or(euint256,euint256) -> (euint256)`
- `or(euint256,euint32) -> (euint256)`
- `or(euint256,euint64) -> (euint256)`
- `or(euint256,euint8) -> (euint256)`
- `or(euint256,uint256) -> (euint256)`
- `or(euint32,euint128) -> (euint128)`
- `or(euint32,euint16) -> (euint32)`
- `or(euint32,euint256) -> (euint256)`
- `or(euint32,euint32) -> (euint32)`
- `or(euint32,euint64) -> (euint64)`
- `or(euint32,euint8) -> (euint32)`
- `or(euint32,uint32) -> (euint32)`
- `or(euint64,euint128) -> (euint128)`
- `or(euint64,euint16) -> (euint64)`
- `or(euint64,euint256) -> (euint256)`
- `or(euint64,euint32) -> (euint64)`
- `or(euint64,euint64) -> (euint64)`
- `or(euint64,euint8) -> (euint64)`
- `or(euint64,uint64) -> (euint64)`
- `or(euint8,euint128) -> (euint128)`
- `or(euint8,euint16) -> (euint16)`
- `or(euint8,euint256) -> (euint256)`
- `or(euint8,euint32) -> (euint32)`
- `or(euint8,euint64) -> (euint64)`
- `or(euint8,euint8) -> (euint8)`
- `or(euint8,uint8) -> (euint8)`
- `or(uint128,euint128) -> (euint128)`
- `or(uint16,euint16) -> (euint16)`
- `or(uint256,euint256) -> (euint256)`
- `or(uint32,euint32) -> (euint32)`
- `or(uint64,euint64) -> (euint64)`
- `or(uint8,euint8) -> (euint8)`

### randEbool

- `randEbool() -> (ebool)`

### randEuint128

- `randEuint128() -> (euint128)`
- `randEuint128(uint128) -> (euint128)`

### randEuint16

- `randEuint16() -> (euint16)`
- `randEuint16(uint16) -> (euint16)`

### randEuint256

- `randEuint256() -> (euint256)`
- `randEuint256(uint256) -> (euint256)`

### randEuint32

- `randEuint32() -> (euint32)`
- `randEuint32(uint32) -> (euint32)`

### randEuint64

- `randEuint64() -> (euint64)`
- `randEuint64(uint64) -> (euint64)`

### randEuint8

- `randEuint8() -> (euint8)`
- `randEuint8(uint8) -> (euint8)`

### rem

- `rem(euint128,uint128) -> (euint128)`
- `rem(euint16,uint16) -> (euint16)`
- `rem(euint32,uint32) -> (euint32)`
- `rem(euint64,uint64) -> (euint64)`
- `rem(euint8,uint8) -> (euint8)`

### revokeUserDecryptionDelegation

- `revokeUserDecryptionDelegation(address,address)`

### revokeUserDecryptionDelegations

- `revokeUserDecryptionDelegations(address,address[])`

### rotl

- `rotl(euint128,euint8) -> (euint128)`
- `rotl(euint128,uint8) -> (euint128)`
- `rotl(euint16,euint8) -> (euint16)`
- `rotl(euint16,uint8) -> (euint16)`
- `rotl(euint256,euint8) -> (euint256)`
- `rotl(euint256,uint8) -> (euint256)`
- `rotl(euint32,euint8) -> (euint32)`
- `rotl(euint32,uint8) -> (euint32)`
- `rotl(euint64,euint8) -> (euint64)`
- `rotl(euint64,uint8) -> (euint64)`
- `rotl(euint8,euint8) -> (euint8)`
- `rotl(euint8,uint8) -> (euint8)`

### rotr

- `rotr(euint128,euint8) -> (euint128)`
- `rotr(euint128,uint8) -> (euint128)`
- `rotr(euint16,euint8) -> (euint16)`
- `rotr(euint16,uint8) -> (euint16)`
- `rotr(euint256,euint8) -> (euint256)`
- `rotr(euint256,uint8) -> (euint256)`
- `rotr(euint32,euint8) -> (euint32)`
- `rotr(euint32,uint8) -> (euint32)`
- `rotr(euint64,euint8) -> (euint64)`
- `rotr(euint64,uint8) -> (euint64)`
- `rotr(euint8,euint8) -> (euint8)`
- `rotr(euint8,uint8) -> (euint8)`

### select

- `select(ebool,eaddress,eaddress) -> (eaddress)`
- `select(ebool,ebool,ebool) -> (ebool)`
- `select(ebool,euint128,euint128) -> (euint128)`
- `select(ebool,euint16,euint16) -> (euint16)`
- `select(ebool,euint256,euint256) -> (euint256)`
- `select(ebool,euint32,euint32) -> (euint32)`
- `select(ebool,euint64,euint64) -> (euint64)`
- `select(ebool,euint8,euint8) -> (euint8)`

### setCoprocessor

- `setCoprocessor(CoprocessorConfig)`

### shl

- `shl(euint128,euint8) -> (euint128)`
- `shl(euint128,uint8) -> (euint128)`
- `shl(euint16,euint8) -> (euint16)`
- `shl(euint16,uint8) -> (euint16)`
- `shl(euint256,euint8) -> (euint256)`
- `shl(euint256,uint8) -> (euint256)`
- `shl(euint32,euint8) -> (euint32)`
- `shl(euint32,uint8) -> (euint32)`
- `shl(euint64,euint8) -> (euint64)`
- `shl(euint64,uint8) -> (euint64)`
- `shl(euint8,euint8) -> (euint8)`
- `shl(euint8,uint8) -> (euint8)`

### shr

- `shr(euint128,euint8) -> (euint128)`
- `shr(euint128,uint8) -> (euint128)`
- `shr(euint16,euint8) -> (euint16)`
- `shr(euint16,uint8) -> (euint16)`
- `shr(euint256,euint8) -> (euint256)`
- `shr(euint256,uint8) -> (euint256)`
- `shr(euint32,euint8) -> (euint32)`
- `shr(euint32,uint8) -> (euint32)`
- `shr(euint64,euint8) -> (euint64)`
- `shr(euint64,uint8) -> (euint64)`
- `shr(euint8,euint8) -> (euint8)`
- `shr(euint8,uint8) -> (euint8)`

### sub

- `sub(euint128,euint128) -> (euint128)`
- `sub(euint128,euint16) -> (euint128)`
- `sub(euint128,euint32) -> (euint128)`
- `sub(euint128,euint64) -> (euint128)`
- `sub(euint128,euint8) -> (euint128)`
- `sub(euint128,uint128) -> (euint128)`
- `sub(euint16,euint128) -> (euint128)`
- `sub(euint16,euint16) -> (euint16)`
- `sub(euint16,euint32) -> (euint32)`
- `sub(euint16,euint64) -> (euint64)`
- `sub(euint16,euint8) -> (euint16)`
- `sub(euint16,uint16) -> (euint16)`
- `sub(euint32,euint128) -> (euint128)`
- `sub(euint32,euint16) -> (euint32)`
- `sub(euint32,euint32) -> (euint32)`
- `sub(euint32,euint64) -> (euint64)`
- `sub(euint32,euint8) -> (euint32)`
- `sub(euint32,uint32) -> (euint32)`
- `sub(euint64,euint128) -> (euint128)`
- `sub(euint64,euint16) -> (euint64)`
- `sub(euint64,euint32) -> (euint64)`
- `sub(euint64,euint64) -> (euint64)`
- `sub(euint64,euint8) -> (euint64)`
- `sub(euint64,uint64) -> (euint64)`
- `sub(euint8,euint128) -> (euint128)`
- `sub(euint8,euint16) -> (euint16)`
- `sub(euint8,euint32) -> (euint32)`
- `sub(euint8,euint64) -> (euint64)`
- `sub(euint8,euint8) -> (euint8)`
- `sub(euint8,uint8) -> (euint8)`
- `sub(uint128,euint128) -> (euint128)`
- `sub(uint16,euint16) -> (euint16)`
- `sub(uint32,euint32) -> (euint32)`
- `sub(uint64,euint64) -> (euint64)`
- `sub(uint8,euint8) -> (euint8)`

### toBytes32

- `toBytes32(eaddress)`
- `toBytes32(ebool)`
- `toBytes32(euint128)`
- `toBytes32(euint16)`
- `toBytes32(euint256)`
- `toBytes32(euint32)`
- `toBytes32(euint64)`
- `toBytes32(euint8)`

### xor

- `xor(bool,ebool) -> (ebool)`
- `xor(ebool,bool) -> (ebool)`
- `xor(ebool,ebool) -> (ebool)`
- `xor(euint128,euint128) -> (euint128)`
- `xor(euint128,euint16) -> (euint128)`
- `xor(euint128,euint256) -> (euint256)`
- `xor(euint128,euint32) -> (euint128)`
- `xor(euint128,euint64) -> (euint128)`
- `xor(euint128,euint8) -> (euint128)`
- `xor(euint128,uint128) -> (euint128)`
- `xor(euint16,euint128) -> (euint128)`
- `xor(euint16,euint16) -> (euint16)`
- `xor(euint16,euint256) -> (euint256)`
- `xor(euint16,euint32) -> (euint32)`
- `xor(euint16,euint64) -> (euint64)`
- `xor(euint16,euint8) -> (euint16)`
- `xor(euint16,uint16) -> (euint16)`
- `xor(euint256,euint128) -> (euint256)`
- `xor(euint256,euint16) -> (euint256)`
- `xor(euint256,euint256) -> (euint256)`
- `xor(euint256,euint32) -> (euint256)`
- `xor(euint256,euint64) -> (euint256)`
- `xor(euint256,euint8) -> (euint256)`
- `xor(euint256,uint256) -> (euint256)`
- `xor(euint32,euint128) -> (euint128)`
- `xor(euint32,euint16) -> (euint32)`
- `xor(euint32,euint256) -> (euint256)`
- `xor(euint32,euint32) -> (euint32)`
- `xor(euint32,euint64) -> (euint64)`
- `xor(euint32,euint8) -> (euint32)`
- `xor(euint32,uint32) -> (euint32)`
- `xor(euint64,euint128) -> (euint128)`
- `xor(euint64,euint16) -> (euint64)`
- `xor(euint64,euint256) -> (euint256)`
- `xor(euint64,euint32) -> (euint64)`
- `xor(euint64,euint64) -> (euint64)`
- `xor(euint64,euint8) -> (euint64)`
- `xor(euint64,uint64) -> (euint64)`
- `xor(euint8,euint128) -> (euint128)`
- `xor(euint8,euint16) -> (euint16)`
- `xor(euint8,euint256) -> (euint256)`
- `xor(euint8,euint32) -> (euint32)`
- `xor(euint8,euint64) -> (euint64)`
- `xor(euint8,euint8) -> (euint8)`
- `xor(euint8,uint8) -> (euint8)`
- `xor(uint128,euint128) -> (euint128)`
- `xor(uint16,euint16) -> (euint16)`
- `xor(uint256,euint256) -> (euint256)`
- `xor(uint32,euint32) -> (euint32)`
- `xor(uint64,euint64) -> (euint64)`
- `xor(uint8,euint8) -> (euint8)`

## Fhenix CoFHE

### add

- `add(euint128,euint128) -> (euint128)`
- `add(euint16,euint16) -> (euint16)`
- `add(euint32,euint32) -> (euint32)`
- `add(euint64,euint64) -> (euint64)`
- `add(euint8,euint8) -> (euint8)`

### allow

- `allow(eaddress,address)`
- `allow(ebool,address)`
- `allow(euint128,address)`
- `allow(euint16,address)`
- `allow(euint32,address)`
- `allow(euint64,address)`
- `allow(euint8,address)`

### allowGlobal

- `allowGlobal(eaddress)`
- `allowGlobal(ebool)`
- `allowGlobal(euint128)`
- `allowGlobal(euint16)`
- `allowGlobal(euint32)`
- `allowGlobal(euint64)`
- `allowGlobal(euint8)`

### allowSender

- `allowSender(eaddress)`
- `allowSender(ebool)`
- `allowSender(euint128)`
- `allowSender(euint16)`
- `allowSender(euint32)`
- `allowSender(euint64)`
- `allowSender(euint8)`

### allowThis

- `allowThis(eaddress)`
- `allowThis(ebool)`
- `allowThis(euint128)`
- `allowThis(euint16)`
- `allowThis(euint32)`
- `allowThis(euint64)`
- `allowThis(euint8)`

### allowTransient

- `allowTransient(eaddress,address)`
- `allowTransient(ebool,address)`
- `allowTransient(euint128,address)`
- `allowTransient(euint16,address)`
- `allowTransient(euint32,address)`
- `allowTransient(euint64,address)`
- `allowTransient(euint8,address)`

### and

- `and(ebool,ebool) -> (ebool)`
- `and(euint128,euint128) -> (euint128)`
- `and(euint16,euint16) -> (euint16)`
- `and(euint32,euint32) -> (euint32)`
- `and(euint64,euint64) -> (euint64)`
- `and(euint8,euint8) -> (euint8)`

### asEaddress

- `asEaddress(InEaddress) -> (eaddress)`
- `asEaddress(address) -> (eaddress)`
- `asEaddress(address,int32) -> (eaddress)`

### asEbool

- `asEbool(InEbool) -> (ebool)`
- `asEbool(bool) -> (ebool)`
- `asEbool(bool,int32) -> (ebool)`
- `asEbool(eaddress) -> (ebool)`
- `asEbool(euint128) -> (ebool)`
- `asEbool(euint16) -> (ebool)`
- `asEbool(euint32) -> (ebool)`
- `asEbool(euint64) -> (ebool)`
- `asEbool(euint8) -> (ebool)`

### asEuint128

- `asEuint128(InEuint128) -> (euint128)`
- `asEuint128(eaddress) -> (euint128)`
- `asEuint128(ebool) -> (euint128)`
- `asEuint128(euint16) -> (euint128)`
- `asEuint128(euint32) -> (euint128)`
- `asEuint128(euint64) -> (euint128)`
- `asEuint128(euint8) -> (euint128)`
- `asEuint128(uint256) -> (euint128)`
- `asEuint128(uint256,int32) -> (euint128)`

### asEuint16

- `asEuint16(InEuint16) -> (euint16)`
- `asEuint16(eaddress) -> (euint16)`
- `asEuint16(ebool) -> (euint16)`
- `asEuint16(euint128) -> (euint16)`
- `asEuint16(euint32) -> (euint16)`
- `asEuint16(euint64) -> (euint16)`
- `asEuint16(euint8) -> (euint16)`
- `asEuint16(uint256) -> (euint16)`
- `asEuint16(uint256,int32) -> (euint16)`

### asEuint32

- `asEuint32(InEuint32) -> (euint32)`
- `asEuint32(eaddress) -> (euint32)`
- `asEuint32(ebool) -> (euint32)`
- `asEuint32(euint128) -> (euint32)`
- `asEuint32(euint16) -> (euint32)`
- `asEuint32(euint64) -> (euint32)`
- `asEuint32(euint8) -> (euint32)`
- `asEuint32(uint256) -> (euint32)`
- `asEuint32(uint256,int32) -> (euint32)`

### asEuint64

- `asEuint64(InEuint64) -> (euint64)`
- `asEuint64(eaddress) -> (euint64)`
- `asEuint64(ebool) -> (euint64)`
- `asEuint64(euint128) -> (euint64)`
- `asEuint64(euint16) -> (euint64)`
- `asEuint64(euint32) -> (euint64)`
- `asEuint64(euint8) -> (euint64)`
- `asEuint64(uint256) -> (euint64)`
- `asEuint64(uint256,int32) -> (euint64)`

### asEuint8

- `asEuint8(InEuint8) -> (euint8)`
- `asEuint8(eaddress) -> (euint8)`
- `asEuint8(ebool) -> (euint8)`
- `asEuint8(euint128) -> (euint8)`
- `asEuint8(euint16) -> (euint8)`
- `asEuint8(euint32) -> (euint8)`
- `asEuint8(euint64) -> (euint8)`
- `asEuint8(uint256) -> (euint8)`
- `asEuint8(uint256,int32) -> (euint8)`

### decrypt

- `decrypt(eaddress)`
- `decrypt(ebool)`
- `decrypt(euint128)`
- `decrypt(euint16)`
- `decrypt(euint32)`
- `decrypt(euint64)`
- `decrypt(euint8)`

### div

- `div(euint128,euint128) -> (euint128)`
- `div(euint16,euint16) -> (euint16)`
- `div(euint32,euint32) -> (euint32)`
- `div(euint64,euint64) -> (euint64)`
- `div(euint8,euint8) -> (euint8)`

### eq

- `eq(eaddress,eaddress) -> (ebool)`
- `eq(ebool,ebool) -> (ebool)`
- `eq(euint128,euint128) -> (ebool)`
- `eq(euint16,euint16) -> (ebool)`
- `eq(euint32,euint32) -> (ebool)`
- `eq(euint64,euint64) -> (ebool)`
- `eq(euint8,euint8) -> (ebool)`

### getDecryptResult

- `getDecryptResult(eaddress)`
- `getDecryptResult(ebool)`
- `getDecryptResult(euint128)`
- `getDecryptResult(euint16)`
- `getDecryptResult(euint32)`
- `getDecryptResult(euint64)`
- `getDecryptResult(euint8)`
- `getDecryptResult(uint256)`

### getDecryptResultSafe

- `getDecryptResultSafe(eaddress)`
- `getDecryptResultSafe(ebool)`
- `getDecryptResultSafe(euint128)`
- `getDecryptResultSafe(euint16)`
- `getDecryptResultSafe(euint32)`
- `getDecryptResultSafe(euint64)`
- `getDecryptResultSafe(euint8)`
- `getDecryptResultSafe(uint256)`

### gt

- `gt(euint128,euint128) -> (ebool)`
- `gt(euint16,euint16) -> (ebool)`
- `gt(euint32,euint32) -> (ebool)`
- `gt(euint64,euint64) -> (ebool)`
- `gt(euint8,euint8) -> (ebool)`

### gte

- `gte(euint128,euint128) -> (ebool)`
- `gte(euint16,euint16) -> (ebool)`
- `gte(euint32,euint32) -> (ebool)`
- `gte(euint64,euint64) -> (ebool)`
- `gte(euint8,euint8) -> (ebool)`

### isAllowed

- `isAllowed(eaddress,address) -> (bool)`
- `isAllowed(ebool,address) -> (bool)`
- `isAllowed(euint128,address) -> (bool)`
- `isAllowed(euint16,address) -> (bool)`
- `isAllowed(euint32,address) -> (bool)`
- `isAllowed(euint64,address) -> (bool)`
- `isAllowed(euint8,address) -> (bool)`

### lt

- `lt(euint128,euint128) -> (ebool)`
- `lt(euint16,euint16) -> (ebool)`
- `lt(euint32,euint32) -> (ebool)`
- `lt(euint64,euint64) -> (ebool)`
- `lt(euint8,euint8) -> (ebool)`

### lte

- `lte(euint128,euint128) -> (ebool)`
- `lte(euint16,euint16) -> (ebool)`
- `lte(euint32,euint32) -> (ebool)`
- `lte(euint64,euint64) -> (ebool)`
- `lte(euint8,euint8) -> (ebool)`

### max

- `max(euint128,euint128) -> (euint128)`
- `max(euint16,euint16) -> (euint16)`
- `max(euint32,euint32) -> (euint32)`
- `max(euint64,euint64) -> (euint64)`
- `max(euint8,euint8) -> (euint8)`

### min

- `min(euint128,euint128) -> (euint128)`
- `min(euint16,euint16) -> (euint16)`
- `min(euint32,euint32) -> (euint32)`
- `min(euint64,euint64) -> (euint64)`
- `min(euint8,euint8) -> (euint8)`

### mul

- `mul(euint128,euint128) -> (euint128)`
- `mul(euint16,euint16) -> (euint16)`
- `mul(euint32,euint32) -> (euint32)`
- `mul(euint64,euint64) -> (euint64)`
- `mul(euint8,euint8) -> (euint8)`

### ne

- `ne(eaddress,eaddress) -> (ebool)`
- `ne(ebool,ebool) -> (ebool)`
- `ne(euint128,euint128) -> (ebool)`
- `ne(euint16,euint16) -> (ebool)`
- `ne(euint32,euint32) -> (ebool)`
- `ne(euint64,euint64) -> (ebool)`
- `ne(euint8,euint8) -> (ebool)`

### not

- `not(ebool) -> (ebool)`
- `not(euint128) -> (euint128)`
- `not(euint16) -> (euint16)`
- `not(euint32) -> (euint32)`
- `not(euint64) -> (euint64)`
- `not(euint8) -> (euint8)`

### or

- `or(ebool,ebool) -> (ebool)`
- `or(euint128,euint128) -> (euint128)`
- `or(euint16,euint16) -> (euint16)`
- `or(euint32,euint32) -> (euint32)`
- `or(euint64,euint64) -> (euint64)`
- `or(euint8,euint8) -> (euint8)`

### randomEuint128

- `randomEuint128() -> (euint128)`
- `randomEuint128(int32) -> (euint128)`

### randomEuint16

- `randomEuint16() -> (euint16)`
- `randomEuint16(int32) -> (euint16)`

### randomEuint32

- `randomEuint32() -> (euint32)`
- `randomEuint32(int32) -> (euint32)`

### randomEuint64

- `randomEuint64() -> (euint64)`
- `randomEuint64(int32) -> (euint64)`

### randomEuint8

- `randomEuint8() -> (euint8)`
- `randomEuint8(int32) -> (euint8)`

### rem

- `rem(euint128,euint128) -> (euint128)`
- `rem(euint16,euint16) -> (euint16)`
- `rem(euint32,euint32) -> (euint32)`
- `rem(euint64,euint64) -> (euint64)`
- `rem(euint8,euint8) -> (euint8)`

### rol

- `rol(euint128,euint128) -> (euint128)`
- `rol(euint16,euint16) -> (euint16)`
- `rol(euint32,euint32) -> (euint32)`
- `rol(euint64,euint64) -> (euint64)`
- `rol(euint8,euint8) -> (euint8)`

### ror

- `ror(euint128,euint128) -> (euint128)`
- `ror(euint16,euint16) -> (euint16)`
- `ror(euint32,euint32) -> (euint32)`
- `ror(euint64,euint64) -> (euint64)`
- `ror(euint8,euint8) -> (euint8)`

### select

- `select(ebool,eaddress,eaddress) -> (eaddress)`
- `select(ebool,ebool,ebool) -> (ebool)`
- `select(ebool,euint128,euint128) -> (euint128)`
- `select(ebool,euint16,euint16) -> (euint16)`
- `select(ebool,euint32,euint32) -> (euint32)`
- `select(ebool,euint64,euint64) -> (euint64)`
- `select(ebool,euint8,euint8) -> (euint8)`

### shl

- `shl(euint128,euint128) -> (euint128)`
- `shl(euint16,euint16) -> (euint16)`
- `shl(euint32,euint32) -> (euint32)`
- `shl(euint64,euint64) -> (euint64)`
- `shl(euint8,euint8) -> (euint8)`

### shr

- `shr(euint128,euint128) -> (euint128)`
- `shr(euint16,euint16) -> (euint16)`
- `shr(euint32,euint32) -> (euint32)`
- `shr(euint64,euint64) -> (euint64)`
- `shr(euint8,euint8) -> (euint8)`

### square

- `square(euint128) -> (euint128)`
- `square(euint16) -> (euint16)`
- `square(euint32) -> (euint32)`
- `square(euint64) -> (euint64)`
- `square(euint8) -> (euint8)`

### sub

- `sub(euint128,euint128) -> (euint128)`
- `sub(euint16,euint16) -> (euint16)`
- `sub(euint32,euint32) -> (euint32)`
- `sub(euint64,euint64) -> (euint64)`
- `sub(euint8,euint8) -> (euint8)`

### xor

- `xor(ebool,ebool) -> (ebool)`
- `xor(euint128,euint128) -> (euint128)`
- `xor(euint16,euint16) -> (euint16)`
- `xor(euint32,euint32) -> (euint32)`
- `xor(euint64,euint64) -> (euint64)`
- `xor(euint8,euint8) -> (euint8)`

