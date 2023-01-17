// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { AddressImplUpgradeable } from "./AddressImplUpgradeable.sol";

library AddressImplStorage {

  struct Layout {
    string sharedAnswer;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.AddressImpl');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
