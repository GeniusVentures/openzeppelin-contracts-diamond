// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721EnumerableMockUpgradeable } from "./ERC721EnumerableMockUpgradeable.sol";

library ERC721EnumerableMockStorage {

  struct Layout {
    string _baseTokenURI;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC721EnumerableMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
