// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { EIP712Upgradeable } from "./EIP712Upgradeable.sol";

library EIP712Storage {

  struct Layout {

    // Cache the domain separator as an immutable value, but also store the chain id that it corresponds to, in order to
    // invalidate the cached domain separator if the chain id changes.
    bytes32 _cachedDomainSeparator;
    uint256 _cachedChainId;
    address _cachedThis;

    bytes32 _hashedName;
    bytes32 _hashedVersion;

    ShortString _name;
    ShortString _version;
    string _nameFallback;
    string _versionFallback;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.EIP712');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
