// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { OwnableUpgradeable } from "./OwnableUpgradeable.sol";

library OwnableStorage {

  struct Layout {
    address _owner;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.Ownable');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
