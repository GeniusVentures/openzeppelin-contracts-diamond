// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC1155SupplyUpgradeable } from "./ERC1155SupplyUpgradeable.sol";

library ERC1155SupplyStorage {

  struct Layout {
    mapping(uint256 => uint256) _totalSupply;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC1155Supply');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
