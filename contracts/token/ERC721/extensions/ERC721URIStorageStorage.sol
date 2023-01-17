// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721URIStorageUpgradeable } from "./ERC721URIStorageUpgradeable.sol";

library ERC721URIStorageStorage {

  struct Layout {

    // Optional mapping for token URIs
    mapping(uint256 => string) _tokenURIs;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC721URIStorage');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
