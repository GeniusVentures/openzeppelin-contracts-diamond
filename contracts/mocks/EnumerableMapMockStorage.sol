// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { UintToAddressMapMockUpgradeable, AddressToUintMapMockUpgradeable } from "./EnumerableMapMockUpgradeable.sol";
import { EnumerableMapUpgradeable } from "../utils/structs/EnumerableMapUpgradeable.sol";

library UintToAddressMapMockStorage {

  struct Layout {

    EnumerableMapUpgradeable.UintToAddressMap _map;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.UintToAddressMapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library AddressToUintMapMockStorage {

  struct Layout {

    EnumerableMapUpgradeable.AddressToUintMap _map;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.AddressToUintMapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
