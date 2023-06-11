// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC4626OffsetMockUpgradeable } from "./ERC4626OffsetMockUpgradeable.sol";

library ERC4626OffsetMockStorage {

  struct Layout {
    uint8 _offset;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC4626OffsetMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
