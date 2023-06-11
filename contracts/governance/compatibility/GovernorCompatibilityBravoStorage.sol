// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorCompatibilityBravoUpgradeable } from "./GovernorCompatibilityBravoUpgradeable.sol";

library GovernorCompatibilityBravoStorage {

  struct Layout {

    mapping(uint256 => GovernorCompatibilityBravoUpgradeable.ProposalDetails) _proposalDetails;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorCompatibilityBravo');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
