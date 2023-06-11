// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC20/extensions/ERC4626Upgradeable.sol";
import { ERC4626OffsetMockStorage } from "./ERC4626OffsetMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC4626OffsetMockUpgradeable is Initializable, ERC4626Upgradeable {
    using ERC4626OffsetMockStorage for ERC4626OffsetMockStorage.Layout;

    function __ERC4626OffsetMock_init(uint8 offset_) internal onlyInitializing {
        __ERC4626OffsetMock_init_unchained(offset_);
    }

    function __ERC4626OffsetMock_init_unchained(uint8 offset_) internal onlyInitializing {
        ERC4626OffsetMockStorage.layout()._offset = offset_;
    }

    function _decimalsOffset() internal view virtual override returns (uint8) {
        return ERC4626OffsetMockStorage.layout()._offset;
    }
}
