// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { AccessControlDefaultAdminRulesUpgradeable } from "./AccessControlDefaultAdminRulesUpgradeable.sol";

library AccessControlDefaultAdminRulesStorage {

  struct Layout {
    // pending admin pair read/written together frequently
    address _pendingDefaultAdmin;
    uint48 _pendingDefaultAdminSchedule;
 // 0 == unset

    uint48 _currentDelay;
    address _currentDefaultAdmin;

    // pending delay pair read/written together frequently
    uint48 _pendingDelay;
    uint48 _pendingDelaySchedule;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.AccessControlDefaultAdminRules');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
