// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { CheckpointsImplUpgradeable } from "./CheckpointsImplUpgradeable.sol";
import { CheckpointsUpgradeable } from "../utils/CheckpointsUpgradeable.sol";

library CheckpointsImplStorage {

  struct Layout {

    CheckpointsUpgradeable.History _totalCheckpoints;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.CheckpointsImpl');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
