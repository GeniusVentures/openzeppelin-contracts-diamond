// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorTimelockControlUpgradeable } from "./GovernorTimelockControlUpgradeable.sol";
import { TimelockControllerUpgradeable } from "../TimelockControllerUpgradeable.sol";

library GovernorTimelockControlStorage {

  struct Layout {
    TimelockControllerUpgradeable _timelock;
    mapping(uint256 => bytes32) _timelockIds;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.GovernorTimelockControl');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
