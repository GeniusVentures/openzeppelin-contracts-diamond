// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { VotesMockUpgradeable } from "./VotesMockUpgradeable.sol";

library VotesMockStorage {

  struct Layout {
    mapping(address => uint256) _balances;
    mapping(uint256 => address) _owners;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.VotesMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
