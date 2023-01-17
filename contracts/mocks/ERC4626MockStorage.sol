// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC4626DecimalMockUpgradeable } from "./ERC4626MockUpgradeable.sol";

library ERC4626DecimalMockStorage {

  struct Layout {

    uint8 _decimals;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC4626DecimalMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
