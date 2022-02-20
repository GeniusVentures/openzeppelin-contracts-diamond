// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/structs/EnumerableMapUpgradeable.sol";
import { UintToAddressMapMockStorage, AddressToUintMapMockStorage } from "./EnumerableMapMockStorage.sol";
import "../proxy/utils/Initializable.sol";

// UintToAddressMap
contract UintToAddressMapMockUpgradeable is Initializable {
    using UintToAddressMapMockStorage for UintToAddressMapMockStorage.Layout;
    function __UintToAddressMapMock_init() internal onlyInitializing {
        __UintToAddressMapMock_init_unchained();
    }

    function __UintToAddressMapMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableMapUpgradeable for EnumerableMapUpgradeable.UintToAddressMap;

    event OperationResult(bool result);

    function contains(uint256 key) public view returns (bool) {
        return UintToAddressMapMockStorage.layout()._map.contains(key);
    }

    function set(uint256 key, address value) public {
        bool result = UintToAddressMapMockStorage.layout()._map.set(key, value);
        emit OperationResult(result);
    }

    function remove(uint256 key) public {
        bool result = UintToAddressMapMockStorage.layout()._map.remove(key);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return UintToAddressMapMockStorage.layout()._map.length();
    }

    function at(uint256 index) public view returns (uint256 key, address value) {
        return UintToAddressMapMockStorage.layout()._map.at(index);
    }

    function tryGet(uint256 key) public view returns (bool, address) {
        return UintToAddressMapMockStorage.layout()._map.tryGet(key);
    }

    function get(uint256 key) public view returns (address) {
        return UintToAddressMapMockStorage.layout()._map.get(key);
    }

    function getWithMessage(uint256 key, string calldata errorMessage) public view returns (address) {
        return UintToAddressMapMockStorage.layout()._map.get(key, errorMessage);
    }
}

// AddressToUintMap
contract AddressToUintMapMockUpgradeable is Initializable {
    using AddressToUintMapMockStorage for AddressToUintMapMockStorage.Layout;
    function __AddressToUintMapMock_init() internal onlyInitializing {
        __AddressToUintMapMock_init_unchained();
    }

    function __AddressToUintMapMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableMapUpgradeable for EnumerableMapUpgradeable.AddressToUintMap;

    event OperationResult(bool result);

    function contains(address key) public view returns (bool) {
        return AddressToUintMapMockStorage.layout()._map.contains(key);
    }

    function set(address key, uint256 value) public {
        bool result = AddressToUintMapMockStorage.layout()._map.set(key, value);
        emit OperationResult(result);
    }

    function remove(address key) public {
        bool result = AddressToUintMapMockStorage.layout()._map.remove(key);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return AddressToUintMapMockStorage.layout()._map.length();
    }

    function at(uint256 index) public view returns (address key, uint256 value) {
        return AddressToUintMapMockStorage.layout()._map.at(index);
    }

    function tryGet(address key) public view returns (bool, uint256) {
        return AddressToUintMapMockStorage.layout()._map.tryGet(key);
    }

    function get(address key) public view returns (uint256) {
        return AddressToUintMapMockStorage.layout()._map.get(key);
    }
}
