// SPDX-License-Identifier: MIT
// This file was procedurally generated from scripts/generate/templates/EnumerableSetMock.js.

pragma solidity ^0.8.0;

import "../utils/structs/EnumerableSetUpgradeable.sol";
import { EnumerableBytes32SetMockStorage, EnumerableAddressSetMockStorage, EnumerableUintSetMockStorage } from "./EnumerableSetMockStorage.sol";
import "../proxy/utils/Initializable.sol";

// Bytes32Set
contract EnumerableBytes32SetMockUpgradeable is Initializable {
    using EnumerableBytes32SetMockStorage for EnumerableBytes32SetMockStorage.Layout;
    function __EnumerableBytes32SetMock_init() internal onlyInitializing {
    }

    function __EnumerableBytes32SetMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.Bytes32Set;

    event OperationResult(bool result);

    function contains(bytes32 value) public view returns (bool) {
        return EnumerableBytes32SetMockStorage.layout()._set.contains(value);
    }

    function add(bytes32 value) public {
        bool result = EnumerableBytes32SetMockStorage.layout()._set.add(value);
        emit OperationResult(result);
    }

    function remove(bytes32 value) public {
        bool result = EnumerableBytes32SetMockStorage.layout()._set.remove(value);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return EnumerableBytes32SetMockStorage.layout()._set.length();
    }

    function at(uint256 index) public view returns (bytes32) {
        return EnumerableBytes32SetMockStorage.layout()._set.at(index);
    }

    function values() public view returns (bytes32[] memory) {
        return EnumerableBytes32SetMockStorage.layout()._set.values();
    }
}

// AddressSet
contract EnumerableAddressSetMockUpgradeable is Initializable {
    using EnumerableAddressSetMockStorage for EnumerableAddressSetMockStorage.Layout;
    function __EnumerableAddressSetMock_init() internal onlyInitializing {
    }

    function __EnumerableAddressSetMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    event OperationResult(bool result);

    function contains(address value) public view returns (bool) {
        return EnumerableAddressSetMockStorage.layout()._set.contains(value);
    }

    function add(address value) public {
        bool result = EnumerableAddressSetMockStorage.layout()._set.add(value);
        emit OperationResult(result);
    }

    function remove(address value) public {
        bool result = EnumerableAddressSetMockStorage.layout()._set.remove(value);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return EnumerableAddressSetMockStorage.layout()._set.length();
    }

    function at(uint256 index) public view returns (address) {
        return EnumerableAddressSetMockStorage.layout()._set.at(index);
    }

    function values() public view returns (address[] memory) {
        return EnumerableAddressSetMockStorage.layout()._set.values();
    }
}

// UintSet
contract EnumerableUintSetMockUpgradeable is Initializable {
    using EnumerableUintSetMockStorage for EnumerableUintSetMockStorage.Layout;
    function __EnumerableUintSetMock_init() internal onlyInitializing {
    }

    function __EnumerableUintSetMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.UintSet;

    event OperationResult(bool result);

    function contains(uint256 value) public view returns (bool) {
        return EnumerableUintSetMockStorage.layout()._set.contains(value);
    }

    function add(uint256 value) public {
        bool result = EnumerableUintSetMockStorage.layout()._set.add(value);
        emit OperationResult(result);
    }

    function remove(uint256 value) public {
        bool result = EnumerableUintSetMockStorage.layout()._set.remove(value);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return EnumerableUintSetMockStorage.layout()._set.length();
    }

    function at(uint256 index) public view returns (uint256) {
        return EnumerableUintSetMockStorage.layout()._set.at(index);
    }

    function values() public view returns (uint256[] memory) {
        return EnumerableUintSetMockStorage.layout()._set.values();
    }
}
