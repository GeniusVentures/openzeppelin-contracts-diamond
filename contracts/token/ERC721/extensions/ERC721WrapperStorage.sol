// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721WrapperUpgradeable } from "./ERC721WrapperUpgradeable.sol";
import { IERC721Upgradeable } from "../IERC721Upgradeable.sol";

library ERC721WrapperStorage {

  struct Layout {
    IERC721Upgradeable _underlying;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC721Wrapper');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
