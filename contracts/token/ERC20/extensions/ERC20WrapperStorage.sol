// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20WrapperUpgradeable } from "./ERC20WrapperUpgradeable.sol";
import { IERC20Upgradeable } from "../IERC20Upgradeable.sol";

library ERC20WrapperStorage {

  struct Layout {
    IERC20Upgradeable underlying;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20Wrapper');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
