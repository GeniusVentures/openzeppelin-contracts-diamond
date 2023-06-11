// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorVotesQuorumFractionUpgradeable } from "./GovernorVotesQuorumFractionUpgradeable.sol";
import { CheckpointsUpgradeable } from "../../utils/CheckpointsUpgradeable.sol";
import { GovernorVotesUpgradeable } from "./GovernorVotesUpgradeable.sol";
import { IERC5805Upgradeable } from "../../interfaces/IERC5805Upgradeable.sol";

library GovernorVotesQuorumFractionStorage {

  struct Layout {

    uint256 _quorumNumerator;
 // DEPRECATED in favor of _quorumNumeratorHistory

    /// @custom:oz-retyped-from Checkpoints.History
    CheckpointsUpgradeable.Trace224 _quorumNumeratorHistory;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorVotesQuorumFraction');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
