// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../token/ERC721/extensions/ERC721URIStorageUpgradeable.sol";
import { ERC721URIStorageMockStorage } from "./ERC721URIStorageMockStorage.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ERC721URIStorageMockUpgradeable is Initializable, ERC721URIStorageUpgradeable {
    using ERC721URIStorageMockStorage for ERC721URIStorageMockStorage.Layout;
    function __ERC721URIStorageMock_init() internal onlyInitializing {
    }

    function __ERC721URIStorageMock_init_unchained() internal onlyInitializing {
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return ERC721URIStorageMockStorage.layout()._baseTokenURI;
    }

    function setBaseURI(string calldata newBaseTokenURI) public {
        ERC721URIStorageMockStorage.layout()._baseTokenURI = newBaseTokenURI;
    }
}
