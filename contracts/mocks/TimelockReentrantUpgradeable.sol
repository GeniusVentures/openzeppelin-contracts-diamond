// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../utils/AddressUpgradeable.sol";
import { TimelockReentrantStorage } from "./TimelockReentrantStorage.sol";
import "../proxy/utils/Initializable.sol";

contract TimelockReentrantUpgradeable is Initializable {
    using TimelockReentrantStorage for TimelockReentrantStorage.Layout;
    function __TimelockReentrant_init() internal onlyInitializing {
    }

    function __TimelockReentrant_init_unchained() internal onlyInitializing {
    }

    function disableReentrancy() external {
        TimelockReentrantStorage.layout()._reentered = true;
    }

    function enableRentrancy(address target, bytes calldata data) external {
        TimelockReentrantStorage.layout()._reenterTarget = target;
        TimelockReentrantStorage.layout()._reenterData = data;
    }

    function reenter() external {
        if (!TimelockReentrantStorage.layout()._reentered) {
            TimelockReentrantStorage.layout()._reentered = true;
            AddressUpgradeable.functionCall(TimelockReentrantStorage.layout()._reenterTarget, TimelockReentrantStorage.layout()._reenterData);
        }
    }
}
