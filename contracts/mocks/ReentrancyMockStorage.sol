// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ReentrancyMockUpgradeable } from "./ReentrancyMockUpgradeable.sol";

library ReentrancyMockStorage {

  struct Layout {
    uint256 counter;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ReentrancyMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
