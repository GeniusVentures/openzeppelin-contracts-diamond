// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20DecimalsMockUpgradeable } from "./ERC20DecimalsMockUpgradeable.sol";

library ERC20DecimalsMockStorage {

  struct Layout {
    uint8 _decimals;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20DecimalsMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
