// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC777SenderRecipientMockUpgradeable } from "./ERC777SenderRecipientMockUpgradeable.sol";
import { IERC1820RegistryUpgradeable } from "../../utils/introspection/IERC1820RegistryUpgradeable.sol";

library ERC777SenderRecipientMockStorage {

  struct Layout {

    bool _shouldRevertSend;
    bool _shouldRevertReceive;

    IERC1820RegistryUpgradeable _erc1820;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC777SenderRecipientMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
