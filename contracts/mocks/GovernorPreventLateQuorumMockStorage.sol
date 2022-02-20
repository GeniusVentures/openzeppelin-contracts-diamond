// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorPreventLateQuorumMockUpgradeable } from "./GovernorPreventLateQuorumMockUpgradeable.sol";

library GovernorPreventLateQuorumMockStorage {

  struct Layout {
    uint256 _quorum;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.GovernorPreventLateQuorumMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
