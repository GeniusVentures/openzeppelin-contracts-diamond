// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC4626Upgradeable } from "./ERC4626Upgradeable.sol";
import { IERC20Upgradeable } from "../IERC20Upgradeable.sol";

library ERC4626Storage {

  struct Layout {

    IERC20Upgradeable _asset;
    uint8 _decimals;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC4626');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
