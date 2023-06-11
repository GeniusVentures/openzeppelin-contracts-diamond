// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/StorageSlotUpgradeable.sol";
import { StorageSlotMockStorage } from "./StorageSlotMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract StorageSlotMockUpgradeable is Initializable {
    using StorageSlotMockStorage for StorageSlotMockStorage.Layout;
    function __StorageSlotMock_init() internal onlyInitializing {
    }

    function __StorageSlotMock_init_unchained() internal onlyInitializing {
    }
    using StorageSlotUpgradeable for *;

    function setBoolean(bytes32 slot, bool value) public {
        slot.getBooleanSlot().value = value;
    }

    function setAddress(bytes32 slot, address value) public {
        slot.getAddressSlot().value = value;
    }

    function setBytes32(bytes32 slot, bytes32 value) public {
        slot.getBytes32Slot().value = value;
    }

    function setUint256(bytes32 slot, uint256 value) public {
        slot.getUint256Slot().value = value;
    }

    function getBoolean(bytes32 slot) public view returns (bool) {
        return slot.getBooleanSlot().value;
    }

    function getAddress(bytes32 slot) public view returns (address) {
        return slot.getAddressSlot().value;
    }

    function getBytes32(bytes32 slot) public view returns (bytes32) {
        return slot.getBytes32Slot().value;
    }

    function getUint256(bytes32 slot) public view returns (uint256) {
        return slot.getUint256Slot().value;
    }

    function setString(bytes32 slot, string calldata value) public {
        slot.getStringSlot().value = value;
    }

    function setStringStorage(uint256 key, string calldata value) public {
        StorageSlotMockStorage.layout().stringMap[key].getStringSlot().value = value;
    }

    function getString(bytes32 slot) public view returns (string memory) {
        return slot.getStringSlot().value;
    }

    function getStringStorage(uint256 key) public view returns (string memory) {
        return StorageSlotMockStorage.layout().stringMap[key].getStringSlot().value;
    }

    function setBytes(bytes32 slot, bytes calldata value) public {
        slot.getBytesSlot().value = value;
    }

    function setBytesStorage(uint256 key, bytes calldata value) public {
        StorageSlotMockStorage.layout().bytesMap[key].getBytesSlot().value = value;
    }

    function getBytes(bytes32 slot) public view returns (bytes memory) {
        return slot.getBytesSlot().value;
    }

    function getBytesStorage(uint256 key) public view returns (bytes memory) {
        return StorageSlotMockStorage.layout().bytesMap[key].getBytesSlot().value;
    }
    // generated getter for stringMap
    function stringMap(uint256 arg0) public view returns(string memory) {
        return StorageSlotMockStorage.layout().stringMap[arg0];
    }

    // generated getter for bytesMap
    function bytesMap(uint256 arg0) public view returns(bytes memory) {
        return StorageSlotMockStorage.layout().bytesMap[arg0];
    }

}
