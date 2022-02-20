// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/escrow/ConditionalEscrowUpgradeable.sol";
import { ConditionalEscrowMockStorage } from "./ConditionalEscrowMockStorage.sol";
import "../proxy/utils/Initializable.sol";

// mock class using ConditionalEscrow
contract ConditionalEscrowMockUpgradeable is Initializable, ConditionalEscrowUpgradeable {
    using ConditionalEscrowMockStorage for ConditionalEscrowMockStorage.Layout;
    function __ConditionalEscrowMock_init() internal onlyInitializing {
        __Context_init_unchained();
        __Ownable_init_unchained();
        __Escrow_init_unchained();
        __ConditionalEscrow_init_unchained();
        __ConditionalEscrowMock_init_unchained();
    }

    function __ConditionalEscrowMock_init_unchained() internal onlyInitializing {
    }

    function setAllowed(address payee, bool allowed) public {
        ConditionalEscrowMockStorage.layout()._allowed[payee] = allowed;
    }

    function withdrawalAllowed(address payee) public view override returns (bool) {
        return ConditionalEscrowMockStorage.layout()._allowed[payee];
    }
}
