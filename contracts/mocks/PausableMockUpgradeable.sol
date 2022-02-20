// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../security/PausableUpgradeable.sol";
import { PausableMockStorage } from "./PausableMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract PausableMockUpgradeable is Initializable, PausableUpgradeable {
    using PausableMockStorage for PausableMockStorage.Layout;

    function __PausableMock_init() internal onlyInitializing {
        __Context_init_unchained();
        __Pausable_init_unchained();
        __PausableMock_init_unchained();
    }

    function __PausableMock_init_unchained() internal onlyInitializing {
        PausableMockStorage.layout().drasticMeasureTaken = false;
        PausableMockStorage.layout().count = 0;
    }

    function normalProcess() external whenNotPaused {
        PausableMockStorage.layout().count++;
    }

    function drasticMeasure() external whenPaused {
        PausableMockStorage.layout().drasticMeasureTaken = true;
    }

    function pause() external {
        _pause();
    }

    function unpause() external {
        _unpause();
    }
    // generated getter for ${varDecl.name}
    function drasticMeasureTaken() public view returns(bool) {
        return PausableMockStorage.layout().drasticMeasureTaken;
    }

    // generated getter for ${varDecl.name}
    function count() public view returns(uint256) {
        return PausableMockStorage.layout().count;
    }

}
