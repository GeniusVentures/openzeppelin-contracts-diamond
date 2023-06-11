// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../proxy/utils/UUPSUpgradeable.sol";
import "../../utils/CountersUpgradeable.sol";
import { NonUpgradeableMockStorage } from "./UUPSUpgradeableMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

contract NonUpgradeableMockUpgradeable is Initializable {
    using NonUpgradeableMockStorage for NonUpgradeableMockStorage.Layout;
    function __NonUpgradeableMock_init() internal onlyInitializing {
    }

    function __NonUpgradeableMock_init_unchained() internal onlyInitializing {
    }

    function current() external view returns (uint256) {
        return CountersUpgradeable.current(NonUpgradeableMockStorage.layout()._counter);
    }

    function increment() external {
        return CountersUpgradeable.increment(NonUpgradeableMockStorage.layout()._counter);
    }
}

contract UUPSUpgradeableMockUpgradeable is Initializable, NonUpgradeableMockUpgradeable, UUPSUpgradeable {
    function __UUPSUpgradeableMock_init() internal onlyInitializing {
    }

    function __UUPSUpgradeableMock_init_unchained() internal onlyInitializing {
    }
    // Not having any checks in this function is dangerous! Do not do this outside tests!
    function _authorizeUpgrade(address) internal override {}
}

contract UUPSUpgradeableUnsafeMockUpgradeable is Initializable, UUPSUpgradeableMockUpgradeable {
    function __UUPSUpgradeableUnsafeMock_init() internal onlyInitializing {
    }

    function __UUPSUpgradeableUnsafeMock_init_unchained() internal onlyInitializing {
    }
    function upgradeTo(address newImplementation) public override {
        ERC1967UpgradeUpgradeable._upgradeToAndCall(newImplementation, bytes(""), false);
    }

    function upgradeToAndCall(address newImplementation, bytes memory data) public payable override {
        ERC1967UpgradeUpgradeable._upgradeToAndCall(newImplementation, data, false);
    }
}
