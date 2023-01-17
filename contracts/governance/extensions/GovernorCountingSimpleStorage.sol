// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorCountingSimpleUpgradeable } from "./GovernorCountingSimpleUpgradeable.sol";

library GovernorCountingSimpleStorage {

  struct Layout {

    mapping(uint256 => GovernorCountingSimpleUpgradeable.ProposalVote) _proposalVotes;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorCountingSimple');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
