// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC1155/IERC1155ReceiverUpgradeable.sol";
import "../../utils/introspection/ERC165Upgradeable.sol";
import { ERC1155ReceiverMockStorage } from "./ERC1155ReceiverMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

contract ERC1155ReceiverMockUpgradeable is Initializable, ERC165Upgradeable, IERC1155ReceiverUpgradeable {
    using ERC1155ReceiverMockStorage for ERC1155ReceiverMockStorage.Layout;

    event Received(address operator, address from, uint256 id, uint256 value, bytes data, uint256 gas);
    event BatchReceived(address operator, address from, uint256[] ids, uint256[] values, bytes data, uint256 gas);

    function __ERC1155ReceiverMock_init(bytes4 recRetval, bool recReverts, bytes4 batRetval, bool batReverts) internal onlyInitializing {
        __ERC1155ReceiverMock_init_unchained(recRetval, recReverts, batRetval, batReverts);
    }

    function __ERC1155ReceiverMock_init_unchained(bytes4 recRetval, bool recReverts, bytes4 batRetval, bool batReverts) internal onlyInitializing {
        ERC1155ReceiverMockStorage.layout()._recRetval = recRetval;
        ERC1155ReceiverMockStorage.layout()._recReverts = recReverts;
        ERC1155ReceiverMockStorage.layout()._batRetval = batRetval;
        ERC1155ReceiverMockStorage.layout()._batReverts = batReverts;
    }

    function onERC1155Received(
        address operator,
        address from,
        uint256 id,
        uint256 value,
        bytes calldata data
    ) external override returns (bytes4) {
        require(!ERC1155ReceiverMockStorage.layout()._recReverts, "ERC1155ReceiverMock: reverting on receive");
        emit Received(operator, from, id, value, data, gasleft());
        return ERC1155ReceiverMockStorage.layout()._recRetval;
    }

    function onERC1155BatchReceived(
        address operator,
        address from,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external override returns (bytes4) {
        require(!ERC1155ReceiverMockStorage.layout()._batReverts, "ERC1155ReceiverMock: reverting on batch receive");
        emit BatchReceived(operator, from, ids, values, data, gasleft());
        return ERC1155ReceiverMockStorage.layout()._batRetval;
    }
}
