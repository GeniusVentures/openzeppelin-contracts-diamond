// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorVotesQuorumFractionUpgradeable } from "./GovernorVotesQuorumFractionUpgradeable.sol";
import { CheckpointsUpgradeable } from "../../utils/CheckpointsUpgradeable.sol";
import { GovernorVotesUpgradeable } from "./GovernorVotesUpgradeable.sol";
import { IVotesUpgradeable } from "../utils/IVotesUpgradeable.sol";

library GovernorVotesQuorumFractionStorage {

  struct Layout {

    uint256 _quorumNumerator;
 // DEPRECATED
    CheckpointsUpgradeable.History _quorumNumeratorHistory;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorVotesQuorumFraction');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
