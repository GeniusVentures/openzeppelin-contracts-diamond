// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { EIP712Upgradeable } from "./EIP712Upgradeable.sol";

library EIP712Storage {

  struct Layout {

    /// @custom:oz-renamed-from _HASHED_NAME
    bytes32 _hashedName;
    /// @custom:oz-renamed-from _HASHED_VERSION
    bytes32 _hashedVersion;

    string _name;
    string _version;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.EIP712');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
