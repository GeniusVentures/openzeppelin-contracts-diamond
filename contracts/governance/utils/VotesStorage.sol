// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { VotesUpgradeable } from "./VotesUpgradeable.sol";
import { CheckpointsUpgradeable } from "../../utils/CheckpointsUpgradeable.sol";
import { CountersUpgradeable } from "../../utils/CountersUpgradeable.sol";

library VotesStorage {

  struct Layout {

    mapping(address => address) _delegation;
    mapping(address => CheckpointsUpgradeable.History) _delegateCheckpoints;
    CheckpointsUpgradeable.History _totalCheckpoints;

    mapping(address => CountersUpgradeable.Counter) _nonces;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Votes');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
