// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/StringsUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

contract StringsMockUpgradeable is Initializable {
    function __StringsMock_init() internal onlyInitializing {
    }

    function __StringsMock_init_unchained() internal onlyInitializing {
    }
    function toString(uint256 value) public pure returns (string memory) {
        return StringsUpgradeable.toString(value);
    }

    function toHexString(uint256 value) public pure returns (string memory) {
        return StringsUpgradeable.toHexString(value);
    }

    function toHexString(uint256 value, uint256 length) public pure returns (string memory) {
        return StringsUpgradeable.toHexString(value, length);
    }

    function toHexString(address addr) public pure returns (string memory) {
        return StringsUpgradeable.toHexString(addr);
    }
}
