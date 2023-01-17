// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { TimelockControllerUpgradeable } from "./TimelockControllerUpgradeable.sol";

library TimelockControllerStorage {

  struct Layout {

    mapping(bytes32 => uint256) _timestamps;
    uint256 _minDelay;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.TimelockController');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
