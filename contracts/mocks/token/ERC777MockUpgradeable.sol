// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC777/ERC777Upgradeable.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC777MockUpgradeable is Initializable, ERC777Upgradeable {
    function __ERC777Mock_init() internal onlyInitializing {
    }

    function __ERC777Mock_init_unchained() internal onlyInitializing {
    }
    event BeforeTokenTransfer();

    function _beforeTokenTransfer(address, address, address, uint256) internal override {
        emit BeforeTokenTransfer();
    }
}
