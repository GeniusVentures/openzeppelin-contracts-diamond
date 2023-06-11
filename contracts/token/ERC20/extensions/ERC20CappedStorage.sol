// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20CappedUpgradeable } from "./ERC20CappedUpgradeable.sol";

library ERC20CappedStorage {

  struct Layout {
    uint256 _cap;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20Capped');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
