// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ERC20Upgradeable } from "../token/ERC20/ERC20Upgradeable.sol";
import "../proxy/utils/Initializable.sol";

contract ERC20MockUpgradeable is Initializable, ERC20Upgradeable {
    function __ERC20Mock_init() internal onlyInitializing {
        __ERC20_init_unchained("ERC20Mock", "E20M");
    }

    function __ERC20Mock_init_unchained() internal onlyInitializing {}

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external {
        _burn(account, amount);
    }
}
