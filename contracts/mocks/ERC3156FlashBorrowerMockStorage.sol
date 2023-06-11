// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC3156FlashBorrowerMockUpgradeable } from "./ERC3156FlashBorrowerMockUpgradeable.sol";

library ERC3156FlashBorrowerMockStorage {

  struct Layout {

    bool _enableApprove;
    bool _enableReturn;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC3156FlashBorrowerMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
