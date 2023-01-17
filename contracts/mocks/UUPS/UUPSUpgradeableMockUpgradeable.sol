// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../CountersImplUpgradeable.sol";
import "../../proxy/utils/UUPSUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

contract UUPSUpgradeableMockUpgradeable is Initializable, CountersImplUpgradeable, UUPSUpgradeable {
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
    function upgradeTo(address newImplementation) external override {
        ERC1967UpgradeUpgradeable._upgradeToAndCall(newImplementation, bytes(""), false);
    }

    function upgradeToAndCall(address newImplementation, bytes memory data) external payable override {
        ERC1967UpgradeUpgradeable._upgradeToAndCall(newImplementation, data, false);
    }
}
