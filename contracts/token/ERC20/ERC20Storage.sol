// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20Upgradeable } from "./ERC20Upgradeable.sol";

library ERC20Storage {

  struct Layout {
    mapping(address => uint256) _balances;

    mapping(address => mapping(address => uint256)) _allowances;

    uint256 _totalSupply;

    string _name;
    string _symbol;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC20');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
