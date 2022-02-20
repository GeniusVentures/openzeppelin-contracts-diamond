// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { Bytes32DequeMockUpgradeable } from "./DoubleEndedQueueMockUpgradeable.sol";
import { DoubleEndedQueueUpgradeable } from "../utils/structs/DoubleEndedQueueUpgradeable.sol";

library Bytes32DequeMockStorage {

  struct Layout {

    DoubleEndedQueueUpgradeable.Bytes32Deque _vector;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.Bytes32DequeMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
