// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20PermitUpgradeable } from "./draft-ERC20PermitUpgradeable.sol";
import { CountersUpgradeable } from "../../../utils/CountersUpgradeable.sol";

library ERC20PermitStorage {

  struct Layout {

    mapping(address => CountersUpgradeable.Counter) _nonces;
    /*
     * @dev In previous versions `_PERMIT_TYPEHASH` was declared as `immutable`.
     * However, to ensure consistency with the upgradeable transpiler, we will continue
     * to reserve a slot.
     * @custom:oz-renamed-from _PERMIT_TYPEHASH
     */
    // solhint-disable-next-line var-name-mixedcase
    bytes32 _PERMIT_TYPEHASH_DEPRECATED_SLOT;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.ERC20Permit');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
