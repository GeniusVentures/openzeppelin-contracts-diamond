// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/structs/DoubleEndedQueueUpgradeable.sol";
import { Bytes32DequeMockStorage } from "./DoubleEndedQueueMockStorage.sol";
import "../proxy/utils/Initializable.sol";

// Bytes32Deque
contract Bytes32DequeMockUpgradeable is Initializable {
    using Bytes32DequeMockStorage for Bytes32DequeMockStorage.Layout;
    function __Bytes32DequeMock_init() internal onlyInitializing {
    }

    function __Bytes32DequeMock_init_unchained() internal onlyInitializing {
    }
    using DoubleEndedQueueUpgradeable for DoubleEndedQueueUpgradeable.Bytes32Deque;

    event OperationResult(bytes32 value);

    function pushBack(bytes32 value) public {
        Bytes32DequeMockStorage.layout()._vector.pushBack(value);
    }

    function pushFront(bytes32 value) public {
        Bytes32DequeMockStorage.layout()._vector.pushFront(value);
    }

    function popFront() public returns (bytes32) {
        bytes32 value = Bytes32DequeMockStorage.layout()._vector.popFront();
        emit OperationResult(value);
        return value;
    }

    function popBack() public returns (bytes32) {
        bytes32 value = Bytes32DequeMockStorage.layout()._vector.popBack();
        emit OperationResult(value);
        return value;
    }

    function front() public view returns (bytes32) {
        return Bytes32DequeMockStorage.layout()._vector.front();
    }

    function back() public view returns (bytes32) {
        return Bytes32DequeMockStorage.layout()._vector.back();
    }

    function at(uint256 i) public view returns (bytes32) {
        return Bytes32DequeMockStorage.layout()._vector.at(i);
    }

    function clear() public {
        Bytes32DequeMockStorage.layout()._vector.clear();
    }

    function length() public view returns (uint256) {
        return Bytes32DequeMockStorage.layout()._vector.length();
    }

    function empty() public view returns (bool) {
        return Bytes32DequeMockStorage.layout()._vector.empty();
    }
}
