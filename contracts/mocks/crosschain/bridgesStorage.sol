// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { BaseRelayMockUpgradeable } from "./bridgesUpgradeable.sol";

library BaseRelayMockStorage {

  struct Layout {

    address _currentSender;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.BaseRelayMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
