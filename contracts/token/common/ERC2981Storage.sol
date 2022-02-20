// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC2981Upgradeable } from "./ERC2981Upgradeable.sol";

library ERC2981Storage {

  struct Layout {

    ERC2981Upgradeable.RoyaltyInfo _defaultRoyaltyInfo;
    mapping(uint256 => ERC2981Upgradeable.RoyaltyInfo) _tokenRoyaltyInfo;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC2981');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
