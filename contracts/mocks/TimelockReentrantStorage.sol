// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { TimelockReentrantUpgradeable } from "./TimelockReentrantUpgradeable.sol";

library TimelockReentrantStorage {

  struct Layout {
    address _reenterTarget;
    bytes _reenterData;
    bool _reentered;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.TimelockReentrant');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
