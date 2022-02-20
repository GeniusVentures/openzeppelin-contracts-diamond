// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721ReceiverMockUpgradeable } from "./ERC721ReceiverMockUpgradeable.sol";

library ERC721ReceiverMockStorage {

  struct Layout {

    bytes4 _retval;
    ERC721ReceiverMockUpgradeable.Error _error;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC721ReceiverMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
