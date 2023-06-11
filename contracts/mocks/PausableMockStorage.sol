// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { PausableMockUpgradeable } from "./PausableMockUpgradeable.sol";

library PausableMockStorage {

  struct Layout {
    bool drasticMeasureTaken;
    uint256 count;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.PausableMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
