// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../utils/AddressUpgradeable.sol";
import "../../vendor/polygon/IFxMessageProcessorUpgradeable.sol";
import { BaseRelayMockStorage } from "./bridgesStorage.sol";
import "../../proxy/utils/Initializable.sol";

abstract contract BaseRelayMockUpgradeable is Initializable {
    using BaseRelayMockStorage for BaseRelayMockStorage.Layout;
    function __BaseRelayMock_init() internal onlyInitializing {
    }

    function __BaseRelayMock_init_unchained() internal onlyInitializing {
    }
    // needed to parse custom errors
    error NotCrossChainCall();
    error InvalidCrossChainSender(address sender, address expected);

    function relayAs(address target, bytes calldata data, address sender) external virtual {
        address previousSender = BaseRelayMockStorage.layout()._currentSender;

        BaseRelayMockStorage.layout()._currentSender = sender;

        (bool success, bytes memory returndata) = target.call(data);
        AddressUpgradeable.verifyCallResultFromTarget(target, success, returndata, "low-level call reverted");

        BaseRelayMockStorage.layout()._currentSender = previousSender;
    }
}

/**
 * AMB
 */
contract BridgeAMBMockUpgradeable is Initializable, BaseRelayMockUpgradeable {
    using BaseRelayMockStorage for BaseRelayMockStorage.Layout;
    function __BridgeAMBMock_init() internal onlyInitializing {
    }

    function __BridgeAMBMock_init_unchained() internal onlyInitializing {
    }
    function messageSender() public view returns (address) {
        return BaseRelayMockStorage.layout()._currentSender;
    }
}

/**
 * Arbitrum
 */
contract BridgeArbitrumL1MockUpgradeable is Initializable, BaseRelayMockUpgradeable {
    using BaseRelayMockStorage for BaseRelayMockStorage.Layout;
    function __BridgeArbitrumL1Mock_init() internal onlyInitializing {
    }

    function __BridgeArbitrumL1Mock_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address public immutable inbox = address(new BridgeArbitrumL1InboxUpgradeable());
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address public immutable outbox = address(new BridgeArbitrumL1OutboxUpgradeable());

    function activeOutbox() public view returns (address) {
        return outbox;
    }

    function currentSender() public view returns (address) {
        return BaseRelayMockStorage.layout()._currentSender;
    }
}

contract BridgeArbitrumL1InboxUpgradeable is Initializable {
    function __BridgeArbitrumL1Inbox_init() internal onlyInitializing {
    }

    function __BridgeArbitrumL1Inbox_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address public immutable bridge = msg.sender;
}

contract BridgeArbitrumL1OutboxUpgradeable is Initializable {
    function __BridgeArbitrumL1Outbox_init() internal onlyInitializing {
    }

    function __BridgeArbitrumL1Outbox_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address public immutable bridge = msg.sender;

    function l2ToL1Sender() public view returns (address) {
        return BridgeArbitrumL1MockUpgradeable(bridge).currentSender();
    }
}

contract BridgeArbitrumL2MockUpgradeable is Initializable, BaseRelayMockUpgradeable {
    using BaseRelayMockStorage for BaseRelayMockStorage.Layout;
    function __BridgeArbitrumL2Mock_init() internal onlyInitializing {
    }

    function __BridgeArbitrumL2Mock_init_unchained() internal onlyInitializing {
    }
    function wasMyCallersAddressAliased() public view returns (bool) {
        return BaseRelayMockStorage.layout()._currentSender != address(0);
    }

    function myCallersAddressWithoutAliasing() public view returns (address) {
        return BaseRelayMockStorage.layout()._currentSender;
    }
}

/**
 * Optimism
 */
contract BridgeOptimismMockUpgradeable is Initializable, BaseRelayMockUpgradeable {
    using BaseRelayMockStorage for BaseRelayMockStorage.Layout;
    function __BridgeOptimismMock_init() internal onlyInitializing {
    }

    function __BridgeOptimismMock_init_unchained() internal onlyInitializing {
    }
    function xDomainMessageSender() public view returns (address) {
        return BaseRelayMockStorage.layout()._currentSender;
    }
}

/**
 * Polygon
 */
contract BridgePolygonChildMockUpgradeable is Initializable, BaseRelayMockUpgradeable {
    function __BridgePolygonChildMock_init() internal onlyInitializing {
    }

    function __BridgePolygonChildMock_init_unchained() internal onlyInitializing {
    }
    function relayAs(address target, bytes calldata data, address sender) external override {
        IFxMessageProcessorUpgradeable(target).processMessageFromRoot(0, sender, data);
    }
}
