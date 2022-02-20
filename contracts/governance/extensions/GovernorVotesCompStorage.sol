// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorVotesCompUpgradeable } from "./GovernorVotesCompUpgradeable.sol";
import { ERC20VotesCompUpgradeable } from "../../token/ERC20/extensions/ERC20VotesCompUpgradeable.sol";

library GovernorVotesCompStorage {

  struct Layout {
    ERC20VotesCompUpgradeable token;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.GovernorVotesComp');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
