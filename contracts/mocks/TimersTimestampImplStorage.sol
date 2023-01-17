// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { TimersTimestampImplUpgradeable } from "./TimersTimestampImplUpgradeable.sol";
import { TimersUpgradeable } from "../utils/TimersUpgradeable.sol";

library TimersTimestampImplStorage {

  struct Layout {

    TimersUpgradeable.Timestamp _timer;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.TimersTimestampImpl');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
