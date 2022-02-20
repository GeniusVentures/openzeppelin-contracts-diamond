// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/TimersUpgradeable.sol";
import { TimersBlockNumberImplStorage } from "./TimersBlockNumberImplStorage.sol";
import "../proxy/utils/Initializable.sol";

contract TimersBlockNumberImplUpgradeable is Initializable {
    using TimersBlockNumberImplStorage for TimersBlockNumberImplStorage.Layout;
    function __TimersBlockNumberImpl_init() internal onlyInitializing {
        __TimersBlockNumberImpl_init_unchained();
    }

    function __TimersBlockNumberImpl_init_unchained() internal onlyInitializing {
    }
    using TimersUpgradeable for TimersUpgradeable.BlockNumber;

    function getDeadline() public view returns (uint64) {
        return TimersBlockNumberImplStorage.layout()._timer.getDeadline();
    }

    function setDeadline(uint64 timestamp) public {
        TimersBlockNumberImplStorage.layout()._timer.setDeadline(timestamp);
    }

    function reset() public {
        TimersBlockNumberImplStorage.layout()._timer.reset();
    }

    function isUnset() public view returns (bool) {
        return TimersBlockNumberImplStorage.layout()._timer.isUnset();
    }

    function isStarted() public view returns (bool) {
        return TimersBlockNumberImplStorage.layout()._timer.isStarted();
    }

    function isPending() public view returns (bool) {
        return TimersBlockNumberImplStorage.layout()._timer.isPending();
    }

    function isExpired() public view returns (bool) {
        return TimersBlockNumberImplStorage.layout()._timer.isExpired();
    }
}
