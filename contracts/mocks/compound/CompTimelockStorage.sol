// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { CompTimelockUpgradeable } from "./CompTimelockUpgradeable.sol";

library CompTimelockStorage {

  struct Layout {

    address admin;
    address pendingAdmin;
    uint256 delay;

    mapping(bytes32 => bool) queuedTransactions;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.CompTimelock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
