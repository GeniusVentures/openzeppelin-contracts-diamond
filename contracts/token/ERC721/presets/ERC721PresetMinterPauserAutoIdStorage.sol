// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC721PresetMinterPauserAutoIdUpgradeable } from "./ERC721PresetMinterPauserAutoIdUpgradeable.sol";
import { CountersUpgradeable } from "../../../utils/CountersUpgradeable.sol";

library ERC721PresetMinterPauserAutoIdStorage {

  struct Layout {

    CountersUpgradeable.Counter _tokenIdTracker;

    string _baseTokenURI;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC721PresetMinterPauserAutoId');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
