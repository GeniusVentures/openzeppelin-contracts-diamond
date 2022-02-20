// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorVotesQuorumFractionUpgradeable } from "./GovernorVotesQuorumFractionUpgradeable.sol";
import { GovernorVotesUpgradeable } from "./GovernorVotesUpgradeable.sol";
import { IVotesUpgradeable } from "../utils/IVotesUpgradeable.sol";

library GovernorVotesQuorumFractionStorage {

  struct Layout {
    uint256 _quorumNumerator;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.GovernorVotesQuorumFraction');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
