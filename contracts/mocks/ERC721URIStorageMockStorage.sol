// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721URIStorageMockUpgradeable } from "./ERC721URIStorageMockUpgradeable.sol";

library ERC721URIStorageMockStorage {

  struct Layout {
    string _baseTokenURI;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC721URIStorageMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
