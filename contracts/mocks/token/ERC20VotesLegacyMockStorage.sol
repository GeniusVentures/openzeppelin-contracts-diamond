// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20VotesLegacyMockUpgradeable } from "./ERC20VotesLegacyMockUpgradeable.sol";

library ERC20VotesLegacyMockStorage {

  struct Layout {

    mapping(address => address) _delegates;
    mapping(address => ERC20VotesLegacyMockUpgradeable.Checkpoint[]) _checkpoints;
    ERC20VotesLegacyMockUpgradeable.Checkpoint[] _totalSupplyCheckpoints;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20VotesLegacyMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
