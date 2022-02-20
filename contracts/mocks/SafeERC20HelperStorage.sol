// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { ERC20ReturnFalseMockUpgradeable, ERC20ReturnTrueMockUpgradeable, ERC20NoReturnMockUpgradeable, SafeERC20WrapperUpgradeable } from "./SafeERC20HelperUpgradeable.sol";
import { IERC20Upgradeable } from "../token/ERC20/IERC20Upgradeable.sol";

library ERC20ReturnFalseMockStorage {

  struct Layout {
    uint256 _allowance;

    // IERC20's functions are not pure, but these mock implementations are: to prevent Solidity from issuing warnings,
    // we write to a dummy state variable.
    uint256 _dummy;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC20ReturnFalseMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library ERC20ReturnTrueMockStorage {

  struct Layout {
    mapping(address => uint256) _allowances;

    // IERC20's functions are not pure, but these mock implementations are: to prevent Solidity from issuing warnings,
    // we write to a dummy state variable.
    uint256 _dummy;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC20ReturnTrueMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library ERC20NoReturnMockStorage {

  struct Layout {
    mapping(address => uint256) _allowances;

    // IERC20's functions are not pure, but these mock implementations are: to prevent Solidity from issuing warnings,
    // we write to a dummy state variable.
    uint256 _dummy;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.ERC20NoReturnMock');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
library SafeERC20WrapperStorage {

  struct Layout {

    IERC20Upgradeable _token;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.SafeERC20Wrapper');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
