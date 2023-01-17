// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { CheckpointsMockUpgradeable, Checkpoints224MockUpgradeable, Checkpoints160MockUpgradeable } from "./CheckpointsMockUpgradeable.sol";
import { CheckpointsUpgradeable } from "../utils/CheckpointsUpgradeable.sol";

library CheckpointsMockStorage {

  struct Layout {

    CheckpointsUpgradeable.History _totalCheckpoints;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.CheckpointsMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library Checkpoints224MockStorage {

  struct Layout {

    CheckpointsUpgradeable.Trace224 _totalCheckpoints;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Checkpoints224Mock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library Checkpoints160MockStorage {

  struct Layout {

    CheckpointsUpgradeable.Trace160 _totalCheckpoints;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Checkpoints160Mock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
