// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC777/IERC777Upgradeable.sol";
import "../token/ERC777/IERC777SenderUpgradeable.sol";
import "../token/ERC777/IERC777RecipientUpgradeable.sol";
import "../utils/ContextUpgradeable.sol";
import "../utils/introspection/IERC1820RegistryUpgradeable.sol";
import "../utils/introspection/ERC1820ImplementerUpgradeable.sol";
import { ERC777SenderRecipientMockStorage } from "./ERC777SenderRecipientMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract ERC777SenderRecipientMockUpgradeable is Initializable, ContextUpgradeable, IERC777SenderUpgradeable, IERC777RecipientUpgradeable, ERC1820ImplementerUpgradeable {
    using ERC777SenderRecipientMockStorage for ERC777SenderRecipientMockStorage.Layout;
    function __ERC777SenderRecipientMock_init() internal onlyInitializing {
        __Context_init_unchained();
        __ERC1820Implementer_init_unchained();
        __ERC777SenderRecipientMock_init_unchained();
    }

    function __ERC777SenderRecipientMock_init_unchained() internal onlyInitializing {
        ERC777SenderRecipientMockStorage.layout()._erc1820 = IERC1820RegistryUpgradeable(0x1820a4B7618BdE71Dce8cdc73aAB6C95905faD24);
    }
    event TokensToSendCalled(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes data,
        bytes operatorData,
        address token,
        uint256 fromBalance,
        uint256 toBalance
    );

    event TokensReceivedCalled(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes data,
        bytes operatorData,
        address token,
        uint256 fromBalance,
        uint256 toBalance
    );

    // Emitted in ERC777Mock. Here for easier decoding
    event BeforeTokenTransfer();

    bytes32 private constant _TOKENS_SENDER_INTERFACE_HASH = keccak256("ERC777TokensSender");
    bytes32 private constant _TOKENS_RECIPIENT_INTERFACE_HASH = keccak256("ERC777TokensRecipient");

    function tokensToSend(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes calldata userData,
        bytes calldata operatorData
    ) external override {
        if (ERC777SenderRecipientMockStorage.layout()._shouldRevertSend) {
            revert();
        }

        IERC777Upgradeable token = IERC777Upgradeable(_msgSender());

        uint256 fromBalance = token.balanceOf(from);
        // when called due to burn, to will be the zero address, which will have a balance of 0
        uint256 toBalance = token.balanceOf(to);

        emit TokensToSendCalled(
            operator,
            from,
            to,
            amount,
            userData,
            operatorData,
            address(token),
            fromBalance,
            toBalance
        );
    }

    function tokensReceived(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes calldata userData,
        bytes calldata operatorData
    ) external override {
        if (ERC777SenderRecipientMockStorage.layout()._shouldRevertReceive) {
            revert();
        }

        IERC777Upgradeable token = IERC777Upgradeable(_msgSender());

        uint256 fromBalance = token.balanceOf(from);
        // when called due to burn, to will be the zero address, which will have a balance of 0
        uint256 toBalance = token.balanceOf(to);

        emit TokensReceivedCalled(
            operator,
            from,
            to,
            amount,
            userData,
            operatorData,
            address(token),
            fromBalance,
            toBalance
        );
    }

    function senderFor(address account) public {
        _registerInterfaceForAddress(_TOKENS_SENDER_INTERFACE_HASH, account);

        address self = address(this);
        if (account == self) {
            registerSender(self);
        }
    }

    function registerSender(address sender) public {
        ERC777SenderRecipientMockStorage.layout()._erc1820.setInterfaceImplementer(address(this), _TOKENS_SENDER_INTERFACE_HASH, sender);
    }

    function recipientFor(address account) public {
        _registerInterfaceForAddress(_TOKENS_RECIPIENT_INTERFACE_HASH, account);

        address self = address(this);
        if (account == self) {
            registerRecipient(self);
        }
    }

    function registerRecipient(address recipient) public {
        ERC777SenderRecipientMockStorage.layout()._erc1820.setInterfaceImplementer(address(this), _TOKENS_RECIPIENT_INTERFACE_HASH, recipient);
    }

    function setShouldRevertSend(bool shouldRevert) public {
        ERC777SenderRecipientMockStorage.layout()._shouldRevertSend = shouldRevert;
    }

    function setShouldRevertReceive(bool shouldRevert) public {
        ERC777SenderRecipientMockStorage.layout()._shouldRevertReceive = shouldRevert;
    }

    function send(
        IERC777Upgradeable token,
        address to,
        uint256 amount,
        bytes memory data
    ) public {
        // This is 777's send function, not the Solidity send function
        token.send(to, amount, data); // solhint-disable-line check-send-result
    }

    function burn(
        IERC777Upgradeable token,
        uint256 amount,
        bytes memory data
    ) public {
        token.burn(amount, data);
    }
}
