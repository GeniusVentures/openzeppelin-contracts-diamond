// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC721/IERC721ReceiverUpgradeable.sol";
import { ERC721ReceiverMockStorage } from "./ERC721ReceiverMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

contract ERC721ReceiverMockUpgradeable is Initializable, IERC721ReceiverUpgradeable {
    using ERC721ReceiverMockStorage for ERC721ReceiverMockStorage.Layout;
    enum Error {
        None,
        RevertWithMessage,
        RevertWithoutMessage,
        Panic
    }

    event Received(address operator, address from, uint256 tokenId, bytes data, uint256 gas);

    function __ERC721ReceiverMock_init(bytes4 retval, Error error) internal onlyInitializing {
        __ERC721ReceiverMock_init_unchained(retval, error);
    }

    function __ERC721ReceiverMock_init_unchained(bytes4 retval, Error error) internal onlyInitializing {
        ERC721ReceiverMockStorage.layout()._retval = retval;
        ERC721ReceiverMockStorage.layout()._error = error;
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes memory data
    ) public override returns (bytes4) {
        if (ERC721ReceiverMockStorage.layout()._error == Error.RevertWithMessage) {
            revert("ERC721ReceiverMock: reverting");
        } else if (ERC721ReceiverMockStorage.layout()._error == Error.RevertWithoutMessage) {
            revert();
        } else if (ERC721ReceiverMockStorage.layout()._error == Error.Panic) {
            uint256 a = uint256(0) / uint256(0);
            a;
        }
        emit Received(operator, from, tokenId, data, gasleft());
        return ERC721ReceiverMockStorage.layout()._retval;
    }
}
