// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721EnumerableUpgradeable } from "./ERC721EnumerableUpgradeable.sol";

library ERC721EnumerableStorage {

  struct Layout {
    // Mapping from owner to list of owned token IDs
    mapping(address => mapping(uint256 => uint256)) _ownedTokens;

    // Mapping from token ID to index of the owner tokens list
    mapping(uint256 => uint256) _ownedTokensIndex;

    // Array with all token ids, used for enumeration
    uint256[] _allTokens;

    // Mapping from token id to position in the allTokens array
    mapping(uint256 => uint256) _allTokensIndex;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC721Enumerable');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
