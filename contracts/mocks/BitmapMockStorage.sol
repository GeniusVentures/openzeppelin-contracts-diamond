// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { BitMapMockUpgradeable } from "./BitmapMockUpgradeable.sol";
import { BitMapsUpgradeable } from "../utils/structs/BitMapsUpgradeable.sol";

library BitMapMockStorage {

  struct Layout {

    BitMapsUpgradeable.BitMap _bitmap;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.BitMapMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
