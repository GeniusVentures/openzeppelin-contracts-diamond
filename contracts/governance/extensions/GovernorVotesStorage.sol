// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorVotesUpgradeable } from "./GovernorVotesUpgradeable.sol";
import { IERC5805Upgradeable } from "../../interfaces/IERC5805Upgradeable.sol";

library GovernorVotesStorage {

  struct Layout {
    IERC5805Upgradeable token;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorVotes');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
