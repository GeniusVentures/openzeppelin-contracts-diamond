// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { DummyImplementationUpgradeable } from "./DummyImplementationUpgradeable.sol";

library DummyImplementationStorage {

  struct Layout {
    uint256 value;
    string text;
    uint256[] values;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.DummyImplementation');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
