// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { CrossChainEnabledPolygonChildUpgradeable } from "./CrossChainEnabledPolygonChildUpgradeable.sol";

library CrossChainEnabledPolygonChildStorage {

  struct Layout {
    address _sender;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.CrossChainEnabledPolygonChild');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
