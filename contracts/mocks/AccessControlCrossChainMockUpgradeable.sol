// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "../access/AccessControlCrossChainUpgradeable.sol";
import "../crosschain/arbitrum/CrossChainEnabledArbitrumL2Upgradeable.sol";
import "../proxy/utils/Initializable.sol";

contract AccessControlCrossChainMockUpgradeable is Initializable, AccessControlCrossChainUpgradeable, CrossChainEnabledArbitrumL2Upgradeable {    function __AccessControlCrossChainMock_init() internal onlyInitializing {
    }

    function __AccessControlCrossChainMock_init_unchained() internal onlyInitializing {
    }
}
