// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { TokenTimelockUpgradeable } from "./TokenTimelockUpgradeable.sol";
import { IERC20Upgradeable } from "../IERC20Upgradeable.sol";

library TokenTimelockStorage {

  struct Layout {

    // ERC20 basic token contract being held
    IERC20Upgradeable _token;

    // beneficiary of tokens after they are released
    address _beneficiary;

    // timestamp when token release is enabled
    uint256 _releaseTime;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.TokenTimelock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
