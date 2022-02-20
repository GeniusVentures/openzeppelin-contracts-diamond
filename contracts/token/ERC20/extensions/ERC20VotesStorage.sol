// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20VotesUpgradeable } from "./ERC20VotesUpgradeable.sol";

library ERC20VotesStorage {

  struct Layout {

    mapping(address => address) _delegates;
    mapping(address => ERC20VotesUpgradeable.Checkpoint[]) _checkpoints;
    ERC20VotesUpgradeable.Checkpoint[] _totalSupplyCheckpoints;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC20Votes');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
