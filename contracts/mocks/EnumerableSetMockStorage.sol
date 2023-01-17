// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { EnumerableBytes32SetMockUpgradeable, EnumerableAddressSetMockUpgradeable, EnumerableUintSetMockUpgradeable } from "./EnumerableSetMockUpgradeable.sol";
import { EnumerableSetUpgradeable } from "../utils/structs/EnumerableSetUpgradeable.sol";

library EnumerableBytes32SetMockStorage {

  struct Layout {

    EnumerableSetUpgradeable.Bytes32Set _set;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.EnumerableBytes32SetMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library EnumerableAddressSetMockStorage {

  struct Layout {

    EnumerableSetUpgradeable.AddressSet _set;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.EnumerableAddressSetMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library EnumerableUintSetMockStorage {

  struct Layout {

    EnumerableSetUpgradeable.UintSet _set;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.EnumerableUintSetMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
