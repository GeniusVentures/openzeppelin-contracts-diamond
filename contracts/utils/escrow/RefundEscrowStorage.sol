// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { RefundEscrowUpgradeable } from "./RefundEscrowUpgradeable.sol";

library RefundEscrowStorage {

  struct Layout {

    RefundEscrowUpgradeable.State _state;
    address payable _beneficiary;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.RefundEscrow');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
