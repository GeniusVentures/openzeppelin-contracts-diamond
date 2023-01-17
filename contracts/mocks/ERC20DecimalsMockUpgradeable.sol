// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/ERC20Upgradeable.sol";
import { ERC20DecimalsMockStorage } from "./ERC20DecimalsMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract ERC20DecimalsMockUpgradeable is Initializable, ERC20Upgradeable {
    using ERC20DecimalsMockStorage for ERC20DecimalsMockStorage.Layout;

    function __ERC20DecimalsMock_init(
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) internal onlyInitializing {
        __ERC20_init_unchained(name_, symbol_);
        __ERC20DecimalsMock_init_unchained(name_, symbol_, decimals_);
    }

    function __ERC20DecimalsMock_init_unchained(
        string memory,
        string memory,
        uint8 decimals_
    ) internal onlyInitializing {
        ERC20DecimalsMockStorage.layout()._decimals = decimals_;
    }

    function decimals() public view override returns (uint8) {
        return ERC20DecimalsMockStorage.layout()._decimals;
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}
