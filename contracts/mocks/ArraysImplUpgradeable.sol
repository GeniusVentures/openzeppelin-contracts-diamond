// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/ArraysUpgradeable.sol";
import { ArraysImplStorage } from "./ArraysImplStorage.sol";
import "../proxy/utils/Initializable.sol";

contract ArraysImplUpgradeable is Initializable {
    using ArraysImplStorage for ArraysImplStorage.Layout;
    using ArraysUpgradeable for uint256[];

    function __ArraysImpl_init(uint256[] memory array) internal onlyInitializing {
        __ArraysImpl_init_unchained(array);
    }

    function __ArraysImpl_init_unchained(uint256[] memory array) internal onlyInitializing {
        ArraysImplStorage.layout()._array = array;
    }

    function findUpperBound(uint256 element) external view returns (uint256) {
        return ArraysImplStorage.layout()._array.findUpperBound(element);
    }
}
