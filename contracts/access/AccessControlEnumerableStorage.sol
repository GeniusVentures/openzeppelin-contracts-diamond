// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { AccessControlEnumerableUpgradeable } from "./AccessControlEnumerableUpgradeable.sol";
import { EnumerableSetUpgradeable } from "../utils/structs/EnumerableSetUpgradeable.sol";

library AccessControlEnumerableStorage {

  struct Layout {

    mapping(bytes32 => EnumerableSetUpgradeable.AddressSet) _roleMembers;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.AccessControlEnumerable');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
