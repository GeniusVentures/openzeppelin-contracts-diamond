// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import { VestingWalletUpgradeable } from "./VestingWalletUpgradeable.sol";

library VestingWalletStorage {

  struct Layout {

    uint256 _released;
    mapping(address => uint256) _erc20Released;
    address _beneficiary;
    uint64 _start;
    uint64 _duration;
  
  }
  
  bytes32 internal constant STORAGE_SLOT = keccak256('openzeppelin.contracts.storage.VestingWallet');

  function layout() internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly {
      l.slot := slot
    }
  }
}
    
