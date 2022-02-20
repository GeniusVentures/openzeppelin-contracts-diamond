// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { PaymentSplitterUpgradeable } from "./PaymentSplitterUpgradeable.sol";
import { IERC20Upgradeable } from "../token/ERC20/IERC20Upgradeable.sol";

library PaymentSplitterStorage {

  struct Layout {

    uint256 _totalShares;
    uint256 _totalReleased;

    mapping(address => uint256) _shares;
    mapping(address => uint256) _released;
    address[] _payees;

    mapping(IERC20Upgradeable => uint256) _erc20TotalReleased;
    mapping(IERC20Upgradeable => mapping(address => uint256)) _erc20Released;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzepplin.contracts.storage.PaymentSplitter');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
