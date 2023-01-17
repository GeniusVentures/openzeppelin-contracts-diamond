// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { UintToAddressMapMockUpgradeable, AddressToUintMapMockUpgradeable, Bytes32ToBytes32MapMockUpgradeable, UintToUintMapMockUpgradeable, Bytes32ToUintMapMockUpgradeable } from "./EnumerableMapMockUpgradeable.sol";
import { EnumerableMapUpgradeable } from "../utils/structs/EnumerableMapUpgradeable.sol";

library UintToAddressMapMockStorage {

  struct Layout {

    EnumerableMapUpgradeable.UintToAddressMap _map;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.UintToAddressMapMock');

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
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.AddressToUintMapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library Bytes32ToBytes32MapMockStorage {

  struct Layout {

    EnumerableMapUpgradeable.Bytes32ToBytes32Map _map;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Bytes32ToBytes32MapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library UintToUintMapMockStorage {

  struct Layout {

    EnumerableMapUpgradeable.UintToUintMap _map;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.UintToUintMapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library Bytes32ToUintMapMockStorage {

  struct Layout {

    EnumerableMapUpgradeable.Bytes32ToUintMap _map;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Bytes32ToUintMapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
