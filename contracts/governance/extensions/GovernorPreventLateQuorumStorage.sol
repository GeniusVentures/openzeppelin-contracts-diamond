// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorPreventLateQuorumUpgradeable } from "./GovernorPreventLateQuorumUpgradeable.sol";
import { TimersUpgradeable } from "../../utils/TimersUpgradeable.sol";

library GovernorPreventLateQuorumStorage {

  struct Layout {

    uint64 _voteExtension;
    mapping(uint256 => TimersUpgradeable.BlockNumber) _extendedDeadlines;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorPreventLateQuorum');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
