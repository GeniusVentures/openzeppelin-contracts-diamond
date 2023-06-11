// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { Uint256ArraysMockUpgradeable, AddressArraysMockUpgradeable, Bytes32ArraysMockUpgradeable } from "./ArraysMockUpgradeable.sol";

library Uint256ArraysMockStorage {

  struct Layout {

    uint256[] _array;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Uint256ArraysMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library AddressArraysMockStorage {

  struct Layout {

    address[] _array;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.AddressArraysMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library Bytes32ArraysMockStorage {

  struct Layout {

    bytes32[] _array;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Bytes32ArraysMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
