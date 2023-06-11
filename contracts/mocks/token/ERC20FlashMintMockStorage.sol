// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20FlashMintMockUpgradeable } from "./ERC20FlashMintMockUpgradeable.sol";

library ERC20FlashMintMockStorage {

  struct Layout {
    uint256 _flashFeeAmount;
    address _flashFeeReceiverAddress;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20FlashMintMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
