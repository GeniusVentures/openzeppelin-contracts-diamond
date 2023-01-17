// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/structs/BitMapsUpgradeable.sol";
import { BitMapMockStorage } from "./BitmapMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract BitMapMockUpgradeable is Initializable {
    using BitMapMockStorage for BitMapMockStorage.Layout;
    function __BitMapMock_init() internal onlyInitializing {
    }

    function __BitMapMock_init_unchained() internal onlyInitializing {
    }
    using BitMapsUpgradeable for BitMapsUpgradeable.BitMap;

    function get(uint256 index) public view returns (bool) {
        return BitMapMockStorage.layout()._bitmap.get(index);
    }

    function setTo(uint256 index, bool value) public {
        BitMapMockStorage.layout()._bitmap.setTo(index, value);
    }

    function set(uint256 index) public {
        BitMapMockStorage.layout()._bitmap.set(index);
    }

    function unset(uint256 index) public {
        BitMapMockStorage.layout()._bitmap.unset(index);
    }
}
