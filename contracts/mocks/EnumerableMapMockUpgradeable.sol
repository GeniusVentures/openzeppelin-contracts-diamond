// SPDX-License-Identifier: MIT
// This file was procedurally generated from scripts/generate/templates/EnumerableMapMock.js.

pragma solidity ^0.8.0;

import "../utils/structs/EnumerableMapUpgradeable.sol";
import { UintToAddressMapMockStorage, AddressToUintMapMockStorage, Bytes32ToBytes32MapMockStorage, UintToUintMapMockStorage, Bytes32ToUintMapMockStorage } from "./EnumerableMapMockStorage.sol";
import "../proxy/utils/Initializable.sol";

// UintToAddressMap
contract UintToAddressMapMockUpgradeable is Initializable {
    using UintToAddressMapMockStorage for UintToAddressMapMockStorage.Layout;
    function __UintToAddressMapMock_init() internal onlyInitializing {
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

    function getWithMessage(address key, string calldata errorMessage) public view returns (uint256) {
        return AddressToUintMapMockStorage.layout()._map.get(key, errorMessage);
    }
}

// Bytes32ToBytes32Map
contract Bytes32ToBytes32MapMockUpgradeable is Initializable {
    using Bytes32ToBytes32MapMockStorage for Bytes32ToBytes32MapMockStorage.Layout;
    function __Bytes32ToBytes32MapMock_init() internal onlyInitializing {
    }

    function __Bytes32ToBytes32MapMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableMapUpgradeable for EnumerableMapUpgradeable.Bytes32ToBytes32Map;

    event OperationResult(bool result);

    function contains(bytes32 key) public view returns (bool) {
        return Bytes32ToBytes32MapMockStorage.layout()._map.contains(key);
    }

    function set(bytes32 key, bytes32 value) public {
        bool result = Bytes32ToBytes32MapMockStorage.layout()._map.set(key, value);
        emit OperationResult(result);
    }

    function remove(bytes32 key) public {
        bool result = Bytes32ToBytes32MapMockStorage.layout()._map.remove(key);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return Bytes32ToBytes32MapMockStorage.layout()._map.length();
    }

    function at(uint256 index) public view returns (bytes32 key, bytes32 value) {
        return Bytes32ToBytes32MapMockStorage.layout()._map.at(index);
    }

    function tryGet(bytes32 key) public view returns (bool, bytes32) {
        return Bytes32ToBytes32MapMockStorage.layout()._map.tryGet(key);
    }

    function get(bytes32 key) public view returns (bytes32) {
        return Bytes32ToBytes32MapMockStorage.layout()._map.get(key);
    }

    function getWithMessage(bytes32 key, string calldata errorMessage) public view returns (bytes32) {
        return Bytes32ToBytes32MapMockStorage.layout()._map.get(key, errorMessage);
    }
}

// UintToUintMap
contract UintToUintMapMockUpgradeable is Initializable {
    using UintToUintMapMockStorage for UintToUintMapMockStorage.Layout;
    function __UintToUintMapMock_init() internal onlyInitializing {
    }

    function __UintToUintMapMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableMapUpgradeable for EnumerableMapUpgradeable.UintToUintMap;

    event OperationResult(bool result);

    function contains(uint256 key) public view returns (bool) {
        return UintToUintMapMockStorage.layout()._map.contains(key);
    }

    function set(uint256 key, uint256 value) public {
        bool result = UintToUintMapMockStorage.layout()._map.set(key, value);
        emit OperationResult(result);
    }

    function remove(uint256 key) public {
        bool result = UintToUintMapMockStorage.layout()._map.remove(key);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return UintToUintMapMockStorage.layout()._map.length();
    }

    function at(uint256 index) public view returns (uint256 key, uint256 value) {
        return UintToUintMapMockStorage.layout()._map.at(index);
    }

    function tryGet(uint256 key) public view returns (bool, uint256) {
        return UintToUintMapMockStorage.layout()._map.tryGet(key);
    }

    function get(uint256 key) public view returns (uint256) {
        return UintToUintMapMockStorage.layout()._map.get(key);
    }

    function getWithMessage(uint256 key, string calldata errorMessage) public view returns (uint256) {
        return UintToUintMapMockStorage.layout()._map.get(key, errorMessage);
    }
}

// Bytes32ToUintMap
contract Bytes32ToUintMapMockUpgradeable is Initializable {
    using Bytes32ToUintMapMockStorage for Bytes32ToUintMapMockStorage.Layout;
    function __Bytes32ToUintMapMock_init() internal onlyInitializing {
    }

    function __Bytes32ToUintMapMock_init_unchained() internal onlyInitializing {
    }
    using EnumerableMapUpgradeable for EnumerableMapUpgradeable.Bytes32ToUintMap;

    event OperationResult(bool result);

    function contains(bytes32 key) public view returns (bool) {
        return Bytes32ToUintMapMockStorage.layout()._map.contains(key);
    }

    function set(bytes32 key, uint256 value) public {
        bool result = Bytes32ToUintMapMockStorage.layout()._map.set(key, value);
        emit OperationResult(result);
    }

    function remove(bytes32 key) public {
        bool result = Bytes32ToUintMapMockStorage.layout()._map.remove(key);
        emit OperationResult(result);
    }

    function length() public view returns (uint256) {
        return Bytes32ToUintMapMockStorage.layout()._map.length();
    }

    function at(uint256 index) public view returns (bytes32 key, uint256 value) {
        return Bytes32ToUintMapMockStorage.layout()._map.at(index);
    }

    function tryGet(bytes32 key) public view returns (bool, uint256) {
        return Bytes32ToUintMapMockStorage.layout()._map.tryGet(key);
    }

    function get(bytes32 key) public view returns (uint256) {
        return Bytes32ToUintMapMockStorage.layout()._map.get(key);
    }

    function getWithMessage(bytes32 key, string calldata errorMessage) public view returns (uint256) {
        return Bytes32ToUintMapMockStorage.layout()._map.get(key, errorMessage);
    }
}
