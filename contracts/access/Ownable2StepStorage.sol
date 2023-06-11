// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { Ownable2StepUpgradeable } from "./Ownable2StepUpgradeable.sol";

library Ownable2StepStorage {

  struct Layout {
    address _pendingOwner;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Ownable2Step');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
