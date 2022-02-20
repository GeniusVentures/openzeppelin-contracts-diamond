// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ConditionalEscrowMockUpgradeable } from "./ConditionalEscrowMockUpgradeable.sol";

library ConditionalEscrowMockStorage {

  struct Layout {
    mapping(address => bool) _allowed;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ConditionalEscrowMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
