// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorTimelockCompoundUpgradeable } from "./GovernorTimelockCompoundUpgradeable.sol";
import { ICompoundTimelockUpgradeable } from "../../vendor/compound/ICompoundTimelockUpgradeable.sol";

library GovernorTimelockCompoundStorage {

  struct Layout {

    ICompoundTimelockUpgradeable _timelock;

    mapping(uint256 => GovernorTimelockCompoundUpgradeable.ProposalTimelock) _proposalTimelocks;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.GovernorTimelockCompound');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
