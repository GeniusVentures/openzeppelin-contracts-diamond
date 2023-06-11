// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC20/extensions/ERC20FlashMintUpgradeable.sol";
import { ERC20FlashMintMockStorage } from "./ERC20FlashMintMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC20FlashMintMockUpgradeable is Initializable, ERC20FlashMintUpgradeable {
    using ERC20FlashMintMockStorage for ERC20FlashMintMockStorage.Layout;
    function __ERC20FlashMintMock_init() internal onlyInitializing {
    }

    function __ERC20FlashMintMock_init_unchained() internal onlyInitializing {
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

    function _flashFeeReceiver() internal view override returns (address) {
        return ERC20FlashMintMockStorage.layout()._flashFeeReceiverAddress;
    }
}
