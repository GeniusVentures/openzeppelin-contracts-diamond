// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../docs/ERC4626FeesUpgradeable.sol";
import { ERC4626FeesMockStorage } from "./ERC4646FeesMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC4626FeesMockUpgradeable is Initializable, ERC4626FeesUpgradeable {
    using ERC4626FeesMockStorage for ERC4626FeesMockStorage.Layout;

    function __ERC4626FeesMock_init(
        uint256 entryFeeBasePoint,
        address entryFeeRecipient,
        uint256 exitFeeBasePoint,
        address exitFeeRecipient
    ) internal onlyInitializing {
        __ERC4626FeesMock_init_unchained(entryFeeBasePoint, entryFeeRecipient, exitFeeBasePoint, exitFeeRecipient);
    }

    function __ERC4626FeesMock_init_unchained(
        uint256 entryFeeBasePoint,
        address entryFeeRecipient,
        uint256 exitFeeBasePoint,
        address exitFeeRecipient
    ) internal onlyInitializing {
        ERC4626FeesMockStorage.layout()._entryFeeBasePointValue = entryFeeBasePoint;
        ERC4626FeesMockStorage.layout()._entryFeeRecipientValue = entryFeeRecipient;
        ERC4626FeesMockStorage.layout()._exitFeeBasePointValue = exitFeeBasePoint;
        ERC4626FeesMockStorage.layout()._exitFeeRecipientValue = exitFeeRecipient;
    }

    function _entryFeeBasePoint() internal view virtual override returns (uint256) {
        return ERC4626FeesMockStorage.layout()._entryFeeBasePointValue;
    }

    function _entryFeeRecipient() internal view virtual override returns (address) {
        return ERC4626FeesMockStorage.layout()._entryFeeRecipientValue;
    }

    function _exitFeeBasePoint() internal view virtual override returns (uint256) {
        return ERC4626FeesMockStorage.layout()._exitFeeBasePointValue;
    }

    function _exitFeeRecipient() internal view virtual override returns (address) {
        return ERC4626FeesMockStorage.layout()._exitFeeRecipientValue;
    }
}
