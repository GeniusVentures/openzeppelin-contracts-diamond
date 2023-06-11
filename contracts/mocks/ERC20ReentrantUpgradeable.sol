// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../token/ERC20/ERC20Upgradeable.sol";
import "../token/ERC20/extensions/ERC4626Upgradeable.sol";
import { ERC20ReentrantStorage } from "./ERC20ReentrantStorage.sol";
import "../proxy/utils/Initializable.sol";

contract ERC20ReentrantUpgradeable is Initializable, ERC20Upgradeable {
    using ERC20ReentrantStorage for ERC20ReentrantStorage.Layout;
    function __ERC20Reentrant_init() internal onlyInitializing {
        __ERC20_init_unchained("TEST", "TST");
    }

    function __ERC20Reentrant_init_unchained() internal onlyInitializing {
    }
    enum Type {
        No,
        Before,
        After
    }

    function scheduleReenter(Type when, address target, bytes calldata data) external {
        ERC20ReentrantStorage.layout()._reenterType = when;
        ERC20ReentrantStorage.layout()._reenterTarget = target;
        ERC20ReentrantStorage.layout()._reenterData = data;
    }

    function functionCall(address target, bytes memory data) public returns (bytes memory) {
        return AddressUpgradeable.functionCall(target, data);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override {
        if (ERC20ReentrantStorage.layout()._reenterType == Type.Before) {
            ERC20ReentrantStorage.layout()._reenterType = Type.No;
            functionCall(ERC20ReentrantStorage.layout()._reenterTarget, ERC20ReentrantStorage.layout()._reenterData);
        }
        super._beforeTokenTransfer(from, to, amount);
    }

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override {
        super._afterTokenTransfer(from, to, amount);
        if (ERC20ReentrantStorage.layout()._reenterType == Type.After) {
            ERC20ReentrantStorage.layout()._reenterType = Type.No;
            functionCall(ERC20ReentrantStorage.layout()._reenterTarget, ERC20ReentrantStorage.layout()._reenterData);
        }
    }
}
