// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/introspection/ERC1820Implementer.sol)

pragma solidity ^0.8.0;

import "./IERC1820ImplementerUpgradeable.sol";
import { ERC1820ImplementerStorage } from "./ERC1820ImplementerStorage.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC1820Implementer} interface.
 *
 * Contracts may inherit from this and call {_registerInterfaceForAddress} to
 * declare their willingness to be implementers.
 * {IERC1820Registry-setInterfaceImplementer} should then be called for the
 * registration to be complete.
 *
 * CAUTION: This file is deprecated as of v4.9 and will be removed in the next major release.
 */
contract ERC1820ImplementerUpgradeable is Initializable, IERC1820ImplementerUpgradeable {
    using ERC1820ImplementerStorage for ERC1820ImplementerStorage.Layout;
    function __ERC1820Implementer_init() internal onlyInitializing {
    }

    function __ERC1820Implementer_init_unchained() internal onlyInitializing {
    }
    bytes32 private constant _ERC1820_ACCEPT_MAGIC = keccak256("ERC1820_ACCEPT_MAGIC");

    /**
     * @dev See {IERC1820Implementer-canImplementInterfaceForAddress}.
     */
    function canImplementInterfaceForAddress(
        bytes32 interfaceHash,
        address account
    ) public view virtual override returns (bytes32) {
        return ERC1820ImplementerStorage.layout()._supportedInterfaces[interfaceHash][account] ? _ERC1820_ACCEPT_MAGIC : bytes32(0x00);
    }

    /**
     * @dev Declares the contract as willing to be an implementer of
     * `interfaceHash` for `account`.
     *
     * See {IERC1820Registry-setInterfaceImplementer} and
     * {IERC1820Registry-interfaceHash}.
     */
    function _registerInterfaceForAddress(bytes32 interfaceHash, address account) internal virtual {
        ERC1820ImplementerStorage.layout()._supportedInterfaces[interfaceHash][account] = true;
    }
}
