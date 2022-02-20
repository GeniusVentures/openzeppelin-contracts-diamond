// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20PermitUpgradeable } from "./draft-ERC20PermitUpgradeable.sol";
import { CountersUpgradeable } from "../../../utils/CountersUpgradeable.sol";

library ERC20PermitStorage {

  struct Layout {

    mapping(address => CountersUpgradeable.Counter) _nonces;

    // solhint-disable-next-line var-name-mixedcase
    bytes32 _PERMIT_TYPEHASH;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC20Permit');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
