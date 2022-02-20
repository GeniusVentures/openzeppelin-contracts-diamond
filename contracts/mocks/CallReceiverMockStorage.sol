// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { CallReceiverMockUpgradeable } from "./CallReceiverMockUpgradeable.sol";

library CallReceiverMockStorage {

  struct Layout {
    string sharedAnswer;

    uint256[] _array;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.CallReceiverMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
