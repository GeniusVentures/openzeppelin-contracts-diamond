// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorSettingsUpgradeable } from "./GovernorSettingsUpgradeable.sol";

library GovernorSettingsStorage {

  struct Layout {
    uint256 _votingDelay;
    uint256 _votingPeriod;
    uint256 _proposalThreshold;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.GovernorSettings');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
