// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC20/ERC20Upgradeable.sol";
import { ERC20DecimalsMockStorage } from "./ERC20DecimalsMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC20DecimalsMockUpgradeable is Initializable, ERC20Upgradeable {
    using ERC20DecimalsMockStorage for ERC20DecimalsMockStorage.Layout;

    function __ERC20DecimalsMock_init(uint8 decimals_) internal onlyInitializing {
        __ERC20DecimalsMock_init_unchained(decimals_);
    }

    function __ERC20DecimalsMock_init_unchained(uint8 decimals_) internal onlyInitializing {
        ERC20DecimalsMockStorage.layout()._decimals = decimals_;
    }

    function decimals() public view override returns (uint8) {
        return ERC20DecimalsMockStorage.layout()._decimals;
    }
}
