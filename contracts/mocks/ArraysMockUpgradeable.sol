// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/ArraysUpgradeable.sol";
import { Uint256ArraysMockStorage, AddressArraysMockStorage, Bytes32ArraysMockStorage } from "./ArraysMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract Uint256ArraysMockUpgradeable is Initializable {
    using Uint256ArraysMockStorage for Uint256ArraysMockStorage.Layout;
    using ArraysUpgradeable for uint256[];

    function __Uint256ArraysMock_init(uint256[] memory array) internal onlyInitializing {
        __Uint256ArraysMock_init_unchained(array);
    }

    function __Uint256ArraysMock_init_unchained(uint256[] memory array) internal onlyInitializing {
        Uint256ArraysMockStorage.layout()._array = array;
    }

    function findUpperBound(uint256 element) external view returns (uint256) {
        return Uint256ArraysMockStorage.layout()._array.findUpperBound(element);
    }

    function unsafeAccess(uint256 pos) external view returns (uint256) {
        return Uint256ArraysMockStorage.layout()._array.unsafeAccess(pos).value;
    }
}

contract AddressArraysMockUpgradeable is Initializable {
    using AddressArraysMockStorage for AddressArraysMockStorage.Layout;
    using ArraysUpgradeable for address[];

    function __AddressArraysMock_init(address[] memory array) internal onlyInitializing {
        __AddressArraysMock_init_unchained(array);
    }

    function __AddressArraysMock_init_unchained(address[] memory array) internal onlyInitializing {
        AddressArraysMockStorage.layout()._array = array;
    }

    function unsafeAccess(uint256 pos) external view returns (address) {
        return AddressArraysMockStorage.layout()._array.unsafeAccess(pos).value;
    }
}

contract Bytes32ArraysMockUpgradeable is Initializable {
    using Bytes32ArraysMockStorage for Bytes32ArraysMockStorage.Layout;
    using ArraysUpgradeable for bytes32[];

    function __Bytes32ArraysMock_init(bytes32[] memory array) internal onlyInitializing {
        __Bytes32ArraysMock_init_unchained(array);
    }

    function __Bytes32ArraysMock_init_unchained(bytes32[] memory array) internal onlyInitializing {
        Bytes32ArraysMockStorage.layout()._array = array;
    }

    function unsafeAccess(uint256 pos) external view returns (bytes32) {
        return Bytes32ArraysMockStorage.layout()._array.unsafeAccess(pos).value;
    }
}
