// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/CountersUpgradeable.sol";
import { CountersImplStorage } from "./CountersImplStorage.sol";
import "../proxy/utils/Initializable.sol";

contract CountersImplUpgradeable is Initializable {
    using CountersImplStorage for CountersImplStorage.Layout;
    function __CountersImpl_init() internal onlyInitializing {
        __CountersImpl_init_unchained();
    }

    function __CountersImpl_init_unchained() internal onlyInitializing {
    }
    using CountersUpgradeable for CountersUpgradeable.Counter;

    function current() public view returns (uint256) {
        return CountersImplStorage.layout()._counter.current();
    }

    function increment() public {
        CountersImplStorage.layout()._counter.increment();
    }

    function decrement() public {
        CountersImplStorage.layout()._counter.decrement();
    }

    function reset() public {
        CountersImplStorage.layout()._counter.reset();
    }
}
