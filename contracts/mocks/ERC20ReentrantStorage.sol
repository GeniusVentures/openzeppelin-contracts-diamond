// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20ReentrantUpgradeable } from "./ERC20ReentrantUpgradeable.sol";

library ERC20ReentrantStorage {

  struct Layout {

    ERC20ReentrantUpgradeable.Type _reenterType;
    address _reenterTarget;
    bytes _reenterData;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20Reentrant');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
