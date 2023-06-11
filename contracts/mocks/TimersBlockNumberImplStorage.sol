// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { TimersBlockNumberImplUpgradeable } from "./TimersBlockNumberImplUpgradeable.sol";
import { TimersUpgradeable } from "../utils/TimersUpgradeable.sol";

library TimersBlockNumberImplStorage {

  struct Layout {

    TimersUpgradeable.BlockNumber _timer;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.TimersBlockNumberImpl');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
