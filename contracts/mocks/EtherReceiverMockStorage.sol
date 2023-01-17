// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { EtherReceiverMockUpgradeable } from "./EtherReceiverMockUpgradeable.sol";

library EtherReceiverMockStorage {

  struct Layout {
    bool _acceptEther;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.EtherReceiverMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
