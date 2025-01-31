// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { NonUpgradeableMockUpgradeable } from "./UUPSUpgradeableMockUpgradeable.sol";
import { CountersUpgradeable } from "../../utils/CountersUpgradeable.sol";

library NonUpgradeableMockStorage {

  struct Layout {
    CountersUpgradeable.Counter _counter;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.NonUpgradeableMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
