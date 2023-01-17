// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/extensions/ERC20FlashMintUpgradeable.sol";
import { ERC20FlashMintMockStorage } from "./ERC20FlashMintMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract ERC20FlashMintMockUpgradeable is Initializable, ERC20FlashMintUpgradeable {
    using ERC20FlashMintMockStorage for ERC20FlashMintMockStorage.Layout;

    function __ERC20FlashMintMock_init(
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) internal onlyInitializing {
        __ERC20_init_unchained(name, symbol);
        __ERC20FlashMintMock_init_unchained(name, symbol, initialAccount, initialBalance);
    }

    function __ERC20FlashMintMock_init_unchained(
        string memory,
        string memory,
        address initialAccount,
        uint256 initialBalance
    ) internal onlyInitializing {
        _mint(initialAccount, initialBalance);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function setFlashFee(uint256 amount) public {
        ERC20FlashMintMockStorage.layout()._flashFeeAmount = amount;
    }

    function _flashFee(address, uint256) internal view override returns (uint256) {
        return ERC20FlashMintMockStorage.layout()._flashFeeAmount;
    }

    function setFlashFeeReceiver(address receiver) public {
        ERC20FlashMintMockStorage.layout()._flashFeeReceiverAddress = receiver;
    }

    function flashFeeReceiver() public view returns (address) {
        return _flashFeeReceiver();
    }

    function _flashFeeReceiver() internal view override returns (address) {
        return ERC20FlashMintMockStorage.layout()._flashFeeReceiverAddress;
    }
}
