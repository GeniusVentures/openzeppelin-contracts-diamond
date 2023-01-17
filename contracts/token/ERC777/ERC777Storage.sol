// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC777Upgradeable } from "./ERC777Upgradeable.sol";

library ERC777Storage {

  struct Layout {

    mapping(address => uint256) _balances;

    uint256 _totalSupply;

    string _name;
    string _symbol;

    // This isn't ever read from - it's only used to respond to the defaultOperators query.
    address[] _defaultOperatorsArray;

    // Immutable, but accounts may revoke them (tracked in __revokedDefaultOperators).
    mapping(address => bool) _defaultOperators;

    // For each account, a mapping of its operators and revoked default operators.
    mapping(address => mapping(address => bool)) _operators;
    mapping(address => mapping(address => bool)) _revokedDefaultOperators;

    // ERC20-allowances
    mapping(address => mapping(address => uint256)) _allowances;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC777');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
