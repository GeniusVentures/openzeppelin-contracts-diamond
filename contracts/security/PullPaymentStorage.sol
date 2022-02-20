// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { PullPaymentUpgradeable } from "./PullPaymentUpgradeable.sol";
import { EscrowUpgradeable } from "../utils/escrow/EscrowUpgradeable.sol";

library PullPaymentStorage {

  struct Layout {
    EscrowUpgradeable _escrow;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.PullPayment');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
