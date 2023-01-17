// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { SupportsInterfaceWithLookupMockUpgradeable } from "./ERC165InterfacesSupportedUpgradeable.sol";

library SupportsInterfaceWithLookupMockStorage {

  struct Layout {

    /*
     * @dev A mapping of interface id to whether or not it's supported.
     */
    mapping(bytes4 => bool) _supportedInterfaces;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.SupportsInterfaceWithLookupMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
