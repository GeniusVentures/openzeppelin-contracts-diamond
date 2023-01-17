// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "../../access/OwnableUpgradeable.sol";
import "../../crosschain/amb/CrossChainEnabledAMBUpgradeable.sol";
import "../../crosschain/arbitrum/CrossChainEnabledArbitrumL1Upgradeable.sol";
import "../../crosschain/arbitrum/CrossChainEnabledArbitrumL2Upgradeable.sol";
import "../../crosschain/optimism/CrossChainEnabledOptimismUpgradeable.sol";
import "../../crosschain/polygon/CrossChainEnabledPolygonChildUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract ReceiverUpgradeable is Initializable, CrossChainEnabledUpgradeable {
    function __Receiver_init() internal onlyInitializing {
    }

    function __Receiver_init_unchained() internal onlyInitializing {
    }
    // we don't use Ownable because it messes up testing for the upgradeable contracts
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address public immutable owner = msg.sender;

    function crossChainRestricted() external onlyCrossChain {}

    function crossChainOwnerRestricted() external onlyCrossChainSender(owner) {}
}

/**
 * AMB
 */
contract CrossChainEnabledAMBMockUpgradeable is Initializable, ReceiverUpgradeable, CrossChainEnabledAMBUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address bridge) CrossChainEnabledAMBUpgradeable(bridge) {}
}

/**
 * Arbitrum
 */
contract CrossChainEnabledArbitrumL1MockUpgradeable is Initializable, ReceiverUpgradeable, CrossChainEnabledArbitrumL1Upgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address bridge) CrossChainEnabledArbitrumL1Upgradeable(bridge) {}
}

contract CrossChainEnabledArbitrumL2MockUpgradeable is Initializable, ReceiverUpgradeable, CrossChainEnabledArbitrumL2Upgradeable {    function __CrossChainEnabledArbitrumL2Mock_init() internal onlyInitializing {
    }

    function __CrossChainEnabledArbitrumL2Mock_init_unchained() internal onlyInitializing {
    }
}

/**
 * Optimism
 */
contract CrossChainEnabledOptimismMockUpgradeable is Initializable, ReceiverUpgradeable, CrossChainEnabledOptimismUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address bridge) CrossChainEnabledOptimismUpgradeable(bridge) {}
}

/**
 * Polygon
 */
contract CrossChainEnabledPolygonChildMockUpgradeable is Initializable, ReceiverUpgradeable, CrossChainEnabledPolygonChildUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address bridge) CrossChainEnabledPolygonChildUpgradeable(bridge) {}
}
