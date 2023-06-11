// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC20/ERC20Upgradeable.sol";
import "../../utils/MulticallUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC20MulticallMockUpgradeable is Initializable, ERC20Upgradeable, MulticallUpgradeable {    function __ERC20MulticallMock_init() internal onlyInitializing {
    }

    function __ERC20MulticallMock_init_unchained() internal onlyInitializing {
    }
}
