// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC1155URIStorageUpgradeable } from "./ERC1155URIStorageUpgradeable.sol";

library ERC1155URIStorageStorage {

  struct Layout {

    // Optional base URI
    string _baseURI;

    // Optional mapping for token URIs
    mapping(uint256 => string) _tokenURIs;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC1155URIStorage');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
