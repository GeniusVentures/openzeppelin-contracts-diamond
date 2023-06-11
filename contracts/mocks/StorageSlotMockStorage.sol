// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { StorageSlotMockUpgradeable } from "./StorageSlotMockUpgradeable.sol";

library StorageSlotMockStorage {

  struct Layout {

    mapping(uint256 => string) stringMap;

    mapping(uint256 => bytes) bytesMap;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.StorageSlotMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
