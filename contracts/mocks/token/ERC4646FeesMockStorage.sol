// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC4626FeesMockUpgradeable } from "./ERC4646FeesMockUpgradeable.sol";

library ERC4626FeesMockStorage {

  struct Layout {
    uint256 _entryFeeBasePointValue;
    address _entryFeeRecipientValue;
    uint256 _exitFeeBasePointValue;
    address _exitFeeRecipientValue;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC4626FeesMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
