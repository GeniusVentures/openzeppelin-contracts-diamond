// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC165StorageUpgradeable } from "./ERC165StorageUpgradeable.sol";

library ERC165StorageStorage {

  struct Layout {
    /*
     * @dev Mapping of interface ids to whether or not it's supported.
     */
    mapping(bytes4 => bool) _supportedInterfaces;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC165Storage');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
