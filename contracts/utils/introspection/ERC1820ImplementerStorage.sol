// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC1820ImplementerUpgradeable } from "./ERC1820ImplementerUpgradeable.sol";

library ERC1820ImplementerStorage {

  struct Layout {

    mapping(bytes32 => mapping(address => bool)) _supportedInterfaces;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC1820Implementer');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
