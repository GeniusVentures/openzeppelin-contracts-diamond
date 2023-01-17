// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/TimersUpgradeable.sol";
import { TimersTimestampImplStorage } from "./TimersTimestampImplStorage.sol";
import "../proxy/utils/Initializable.sol";

contract TimersTimestampImplUpgradeable is Initializable {
    using TimersTimestampImplStorage for TimersTimestampImplStorage.Layout;
    function __TimersTimestampImpl_init() internal onlyInitializing {
    }

    function __TimersTimestampImpl_init_unchained() internal onlyInitializing {
    }
    using TimersUpgradeable for TimersUpgradeable.Timestamp;

    function getDeadline() public view returns (uint64) {
        return TimersTimestampImplStorage.layout()._timer.getDeadline();
    }

    function setDeadline(uint64 timestamp) public {
        TimersTimestampImplStorage.layout()._timer.setDeadline(timestamp);
    }

    function reset() public {
        TimersTimestampImplStorage.layout()._timer.reset();
    }

    function isUnset() public view returns (bool) {
        return TimersTimestampImplStorage.layout()._timer.isUnset();
    }

    function isStarted() public view returns (bool) {
        return TimersTimestampImplStorage.layout()._timer.isStarted();
    }

    function isPending() public view returns (bool) {
        return TimersTimestampImplStorage.layout()._timer.isPending();
    }

    function isExpired() public view returns (bool) {
        return TimersTimestampImplStorage.layout()._timer.isExpired();
    }
}
