// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ReentrancyGuardUpgradeable } from "./ReentrancyGuardUpgradeable.sol";

library ReentrancyGuardStorage {

  struct Layout {

    uint256 _status;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ReentrancyGuard');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
