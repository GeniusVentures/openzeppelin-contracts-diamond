// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721ConsecutiveUpgradeable } from "./ERC721ConsecutiveUpgradeable.sol";
import { CheckpointsUpgradeable } from "../../../utils/CheckpointsUpgradeable.sol";
import { BitMapsUpgradeable } from "../../../utils/structs/BitMapsUpgradeable.sol";

library ERC721ConsecutiveStorage {

  struct Layout {

    CheckpointsUpgradeable.Trace160 _sequentialOwnership;
    BitMapsUpgradeable.BitMap _sequentialBurn;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC721Consecutive');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
