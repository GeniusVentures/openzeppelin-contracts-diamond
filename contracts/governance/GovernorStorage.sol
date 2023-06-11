// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { GovernorUpgradeable } from "./GovernorUpgradeable.sol";
import { DoubleEndedQueueUpgradeable } from "../utils/structs/DoubleEndedQueueUpgradeable.sol";

library GovernorStorage {

  struct Layout {
    // solhint-enable var-name-mixedcase

    string _name;

    /// @custom:oz-retyped-from mapping(uint256 => Governor.ProposalCore)
    mapping(uint256 => GovernorUpgradeable.ProposalCore) _proposals;

    // This queue keeps track of the governor operating on itself. Calls to functions protected by the
    // {onlyGovernance} modifier needs to be whitelisted in this queue. Whitelisting is set in {_beforeExecute},
    // consumed by the {onlyGovernance} modifier and eventually reset in {_afterExecute}. This ensures that the
    // execution of {onlyGovernance} protected calls can only be achieved through successful proposals.
    DoubleEndedQueueUpgradeable.Bytes32Deque _governanceCall;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.Governor');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
