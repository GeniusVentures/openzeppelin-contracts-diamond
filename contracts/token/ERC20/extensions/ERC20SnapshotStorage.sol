// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20SnapshotUpgradeable } from "./ERC20SnapshotUpgradeable.sol";
import { CountersUpgradeable } from "../../../utils/CountersUpgradeable.sol";

library ERC20SnapshotStorage {

  struct Layout {

    mapping(address => ERC20SnapshotUpgradeable.Snapshots) _accountBalanceSnapshots;
    ERC20SnapshotUpgradeable.Snapshots _totalSupplySnapshots;

    // Snapshot ids increase monotonically, with the first value being 1. An id of 0 is invalid.
    CountersUpgradeable.Counter _currentSnapshotId;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20Snapshot');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
