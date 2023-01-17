// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC1155ReceiverMockUpgradeable } from "./ERC1155ReceiverMockUpgradeable.sol";

library ERC1155ReceiverMockStorage {

  struct Layout {
    bytes4 _recRetval;
    bool _recReverts;
    bytes4 _batRetval;
    bool _batReverts;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC1155ReceiverMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
