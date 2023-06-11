// SPDX-License-Identifier: MIT
pragma solidity >=0.7 <0.9;
pragma experimental ABIEncoderV2;

import "../../contracts-exposed/access/AccessControlUpgradeable.sol";

contract $AccessControlUpgradeableWithInit is $AccessControlUpgradeable {
    constructor() payable initializer {
        __$AccessControl_init();
    }
}
import "../../contracts-exposed/access/AccessControlDefaultAdminRulesUpgradeable.sol";

contract $AccessControlDefaultAdminRulesUpgradeableWithInit is $AccessControlDefaultAdminRulesUpgradeable {
    constructor(uint48 initialDelay, address initialDefaultAdmin) payable initializer {
        __$AccessControlDefaultAdminRules_init(initialDelay, initialDefaultAdmin);
    }
}
import "../../contracts-exposed/access/AccessControlEnumerableUpgradeable.sol";

contract $AccessControlEnumerableUpgradeableWithInit is $AccessControlEnumerableUpgradeable {
    constructor() payable initializer {
        __$AccessControlEnumerable_init();
    }
}
import "../../contracts-exposed/access/OwnableUpgradeable.sol";

contract $OwnableUpgradeableWithInit is $OwnableUpgradeable {
    constructor() payable initializer {
        __$Ownable_init();
    }
}
import "../../contracts-exposed/access/Ownable2StepUpgradeable.sol";

contract $Ownable2StepUpgradeableWithInit is $Ownable2StepUpgradeable {
    constructor() payable initializer {
        __$Ownable2Step_init();
    }
}
import "../../contracts-exposed/crosschain/amb/CrossChainEnabledAMBUpgradeable.sol";

contract $CrossChainEnabledAMBUpgradeableWithInit is $CrossChainEnabledAMBUpgradeable {
    constructor(address bridge) payable initializer {
        __$CrossChainEnabledAMB_init(bridge);
    }
}
import "../../contracts-exposed/crosschain/amb/LibAMBUpgradeable.sol";

contract $LibAMBUpgradeableWithInit is $LibAMBUpgradeable {
    constructor() payable initializer {
        __$LibAMB_init();
    }
}
import "../../contracts-exposed/crosschain/arbitrum/CrossChainEnabledArbitrumL1Upgradeable.sol";

contract $CrossChainEnabledArbitrumL1UpgradeableWithInit is $CrossChainEnabledArbitrumL1Upgradeable {
    constructor(address bridge) payable initializer {
        __$CrossChainEnabledArbitrumL1_init(bridge);
    }
}
import "../../contracts-exposed/crosschain/arbitrum/CrossChainEnabledArbitrumL2Upgradeable.sol";

contract $CrossChainEnabledArbitrumL2UpgradeableWithInit is $CrossChainEnabledArbitrumL2Upgradeable {
    constructor() payable initializer {
        __$CrossChainEnabledArbitrumL2_init();
    }
}
import "../../contracts-exposed/crosschain/arbitrum/LibArbitrumL1Upgradeable.sol";

contract $LibArbitrumL1UpgradeableWithInit is $LibArbitrumL1Upgradeable {
    constructor() payable initializer {
        __$LibArbitrumL1_init();
    }
}
import "../../contracts-exposed/crosschain/arbitrum/LibArbitrumL2Upgradeable.sol";

contract $LibArbitrumL2UpgradeableWithInit is $LibArbitrumL2Upgradeable {
    constructor() payable initializer {
        __$LibArbitrumL2_init();
    }
}
import "../../contracts-exposed/crosschain/optimism/CrossChainEnabledOptimismUpgradeable.sol";

contract $CrossChainEnabledOptimismUpgradeableWithInit is $CrossChainEnabledOptimismUpgradeable {
    constructor(address messenger) payable initializer {
        __$CrossChainEnabledOptimism_init(messenger);
    }
}
import "../../contracts-exposed/crosschain/optimism/LibOptimismUpgradeable.sol";

contract $LibOptimismUpgradeableWithInit is $LibOptimismUpgradeable {
    constructor() payable initializer {
        __$LibOptimism_init();
    }
}
import "../../contracts-exposed/crosschain/polygon/CrossChainEnabledPolygonChildUpgradeable.sol";

contract $CrossChainEnabledPolygonChildUpgradeableWithInit is $CrossChainEnabledPolygonChildUpgradeable {
    constructor(address fxChild) payable initializer {
        __$CrossChainEnabledPolygonChild_init(fxChild);
    }
}
import "../../contracts-exposed/finance/PaymentSplitterUpgradeable.sol";

contract $PaymentSplitterUpgradeableWithInit is $PaymentSplitterUpgradeable {
    constructor(address[] memory payees, uint256[] memory shares_) payable initializer {
        __$PaymentSplitter_init(payees, shares_);
    }
}
import "../../contracts-exposed/finance/VestingWalletUpgradeable.sol";

contract $VestingWalletUpgradeableWithInit is $VestingWalletUpgradeable {
    constructor(address beneficiaryAddress, uint64 startTimestamp, uint64 durationSeconds) payable initializer {
        __$VestingWallet_init(beneficiaryAddress, startTimestamp, durationSeconds);
    }
}
import "../../contracts-exposed/governance/TimelockControllerUpgradeable.sol";

contract $TimelockControllerUpgradeableWithInit is $TimelockControllerUpgradeable {
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors, address admin) payable initializer {
        __$TimelockController_init(minDelay, proposers, executors, admin);
    }
}
import "../../contracts-exposed/interfaces/IERC1967Upgradeable.sol";

contract $IERC1967UpgradeableWithInit is $IERC1967Upgradeable {
    constructor() payable initializer {
        __$IERC1967_init();
    }
}
import "../../contracts-exposed/interfaces/IERC2309Upgradeable.sol";

contract $IERC2309UpgradeableWithInit is $IERC2309Upgradeable {
    constructor() payable initializer {
        __$IERC2309_init();
    }
}
import "../../contracts-exposed/metatx/ERC2771ContextUpgradeable.sol";

contract $ERC2771ContextUpgradeableWithInit is $ERC2771ContextUpgradeable {
    constructor(address trustedForwarder) payable initializer {
        __$ERC2771Context_init(trustedForwarder);
    }
}
import "../../contracts-exposed/metatx/MinimalForwarderUpgradeable.sol";

contract $MinimalForwarderUpgradeableWithInit is $MinimalForwarderUpgradeable {
    constructor() payable initializer {
        __$MinimalForwarder_init();
    }
}
import "../../contracts-exposed/mocks/AccessControlCrossChainMockUpgradeable.sol";

contract $AccessControlCrossChainMockUpgradeableWithInit is $AccessControlCrossChainMockUpgradeable {
    constructor() payable initializer {
        __$AccessControlCrossChainMock_init();
    }
}
import "../../contracts-exposed/mocks/ArraysMockUpgradeable.sol";

contract $Uint256ArraysMockUpgradeableWithInit is $Uint256ArraysMockUpgradeable {
    constructor(uint256[] memory array) payable initializer {
        __$Uint256ArraysMock_init(array);
    }
}
import "../../contracts-exposed/mocks/ArraysMockUpgradeable.sol";

contract $AddressArraysMockUpgradeableWithInit is $AddressArraysMockUpgradeable {
    constructor(address[] memory array) payable initializer {
        __$AddressArraysMock_init(array);
    }
}
import "../../contracts-exposed/mocks/ArraysMockUpgradeable.sol";

contract $Bytes32ArraysMockUpgradeableWithInit is $Bytes32ArraysMockUpgradeable {
    constructor(bytes32[] memory array) payable initializer {
        __$Bytes32ArraysMock_init(array);
    }
}
import "../../contracts-exposed/mocks/CallReceiverMockUpgradeable.sol";

contract $CallReceiverMockUpgradeableWithInit is $CallReceiverMockUpgradeable {
    constructor() payable initializer {
        __$CallReceiverMock_init();
    }
}
import "../../contracts-exposed/mocks/compound/CompTimelockUpgradeable.sol";

contract $CompTimelockUpgradeableWithInit is $CompTimelockUpgradeable {
    constructor(address admin_, uint256 delay_) payable initializer {
        __$CompTimelock_init(admin_, delay_);
    }
}
import "../../contracts-exposed/mocks/ConditionalEscrowMockUpgradeable.sol";

contract $ConditionalEscrowMockUpgradeableWithInit is $ConditionalEscrowMockUpgradeable {
    constructor() payable initializer {
        __$ConditionalEscrowMock_init();
    }
}
import "../../contracts-exposed/mocks/ContextMockUpgradeable.sol";

contract $ContextMockUpgradeableWithInit is $ContextMockUpgradeable {
    constructor() payable initializer {
        __$ContextMock_init();
    }
}
import "../../contracts-exposed/mocks/ContextMockUpgradeable.sol";

contract $ContextMockCallerUpgradeableWithInit is $ContextMockCallerUpgradeable {
    constructor() payable initializer {
        __$ContextMockCaller_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BaseRelayMockUpgradeableWithInit is $BaseRelayMockUpgradeable {
    constructor() payable initializer {
        __$BaseRelayMock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgeAMBMockUpgradeableWithInit is $BridgeAMBMockUpgradeable {
    constructor() payable initializer {
        __$BridgeAMBMock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgeArbitrumL1MockUpgradeableWithInit is $BridgeArbitrumL1MockUpgradeable {
    constructor() payable initializer {
        __$BridgeArbitrumL1Mock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgeArbitrumL1InboxUpgradeableWithInit is $BridgeArbitrumL1InboxUpgradeable {
    constructor() payable initializer {
        __$BridgeArbitrumL1Inbox_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgeArbitrumL1OutboxUpgradeableWithInit is $BridgeArbitrumL1OutboxUpgradeable {
    constructor() payable initializer {
        __$BridgeArbitrumL1Outbox_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgeArbitrumL2MockUpgradeableWithInit is $BridgeArbitrumL2MockUpgradeable {
    constructor() payable initializer {
        __$BridgeArbitrumL2Mock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgeOptimismMockUpgradeableWithInit is $BridgeOptimismMockUpgradeable {
    constructor() payable initializer {
        __$BridgeOptimismMock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/bridgesUpgradeable.sol";

contract $BridgePolygonChildMockUpgradeableWithInit is $BridgePolygonChildMockUpgradeable {
    constructor() payable initializer {
        __$BridgePolygonChildMock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/receiversUpgradeable.sol";

contract $CrossChainEnabledAMBMockUpgradeableWithInit is $CrossChainEnabledAMBMockUpgradeable {
    constructor(address bridge) payable initializer {
        __$CrossChainEnabledAMBMock_init(bridge);
    }
}
import "../../contracts-exposed/mocks/crosschain/receiversUpgradeable.sol";

contract $CrossChainEnabledArbitrumL1MockUpgradeableWithInit is $CrossChainEnabledArbitrumL1MockUpgradeable {
    constructor(address bridge) payable initializer {
        __$CrossChainEnabledArbitrumL1Mock_init(bridge);
    }
}
import "../../contracts-exposed/mocks/crosschain/receiversUpgradeable.sol";

contract $CrossChainEnabledArbitrumL2MockUpgradeableWithInit is $CrossChainEnabledArbitrumL2MockUpgradeable {
    constructor() payable initializer {
        __$CrossChainEnabledArbitrumL2Mock_init();
    }
}
import "../../contracts-exposed/mocks/crosschain/receiversUpgradeable.sol";

contract $CrossChainEnabledOptimismMockUpgradeableWithInit is $CrossChainEnabledOptimismMockUpgradeable {
    constructor(address bridge) payable initializer {
        __$CrossChainEnabledOptimismMock_init(bridge);
    }
}
import "../../contracts-exposed/mocks/crosschain/receiversUpgradeable.sol";

contract $CrossChainEnabledPolygonChildMockUpgradeableWithInit is $CrossChainEnabledPolygonChildMockUpgradeable {
    constructor(address bridge) payable initializer {
        __$CrossChainEnabledPolygonChildMock_init(bridge);
    }
}
import "../../contracts-exposed/mocks/docs/ERC4626FeesUpgradeable.sol";

contract $ERC4626FeesUpgradeableWithInit is $ERC4626FeesUpgradeable {
    constructor(string memory name_, string memory symbol_, IERC20Upgradeable asset_) payable initializer {
        __$ERC4626Fees_init(name_, symbol_, asset_);
    }
}
import "../../contracts-exposed/mocks/docs/governance/MyGovernorUpgradeable.sol";

contract $MyGovernorUpgradeableWithInit is $MyGovernorUpgradeable {
    constructor(IVotesUpgradeable _token, TimelockControllerUpgradeable _timelock) payable initializer {
        __$MyGovernor_init(_token, _timelock);
    }
}
import "../../contracts-exposed/mocks/docs/governance/MyTokenUpgradeable.sol";

contract $MyTokenUpgradeableWithInit is $MyTokenUpgradeable {
    constructor() payable initializer {
        __$MyToken_init();
    }
}
import "../../contracts-exposed/mocks/docs/governance/MyTokenTimestampBasedUpgradeable.sol";

contract $MyTokenTimestampBasedUpgradeableWithInit is $MyTokenTimestampBasedUpgradeable {
    constructor() payable initializer {
        __$MyTokenTimestampBased_init();
    }
}
import "../../contracts-exposed/mocks/docs/governance/MyTokenWrappedUpgradeable.sol";

contract $MyTokenWrappedUpgradeableWithInit is $MyTokenWrappedUpgradeable {
    constructor(IERC20Upgradeable wrappedToken) payable initializer {
        __$MyTokenWrapped_init(wrappedToken);
    }
}
import "../../contracts-exposed/mocks/DummyImplementationUpgradeable.sol";

contract $DummyImplementationUpgradeableWithInit is $DummyImplementationUpgradeable {
    constructor() payable initializer {
        __$DummyImplementation_init();
    }
}
import "../../contracts-exposed/mocks/DummyImplementationUpgradeable.sol";

contract $DummyImplementationV2UpgradeableWithInit is $DummyImplementationV2Upgradeable {
    constructor() payable initializer {
        __$DummyImplementationV2_init();
    }
}
import "../../contracts-exposed/mocks/EIP712VerifierUpgradeable.sol";

contract $EIP712VerifierUpgradeableWithInit is $EIP712VerifierUpgradeable {
    constructor(string memory name, string memory version) payable initializer {
        __$EIP712Verifier_init(name, version);
    }
}
import "../../contracts-exposed/mocks/ERC1271WalletMockUpgradeable.sol";

contract $ERC1271WalletMockUpgradeableWithInit is $ERC1271WalletMockUpgradeable {
    constructor(address originalOwner) payable initializer {
        __$ERC1271WalletMock_init(originalOwner);
    }
}
import "../../contracts-exposed/mocks/ERC1271WalletMockUpgradeable.sol";

contract $ERC1271MaliciousMockUpgradeableWithInit is $ERC1271MaliciousMockUpgradeable {
    constructor() payable initializer {
        __$ERC1271MaliciousMock_init();
    }
}
import "../../contracts-exposed/mocks/ERC165/ERC165MaliciousDataUpgradeable.sol";

contract $ERC165MaliciousDataUpgradeableWithInit is $ERC165MaliciousDataUpgradeable {
    constructor() payable initializer {
        __$ERC165MaliciousData_init();
    }
}
import "../../contracts-exposed/mocks/ERC165/ERC165MissingDataUpgradeable.sol";

contract $ERC165MissingDataUpgradeableWithInit is $ERC165MissingDataUpgradeable {
    constructor() payable initializer {
        __$ERC165MissingData_init();
    }
}
import "../../contracts-exposed/mocks/ERC165/ERC165NotSupportedUpgradeable.sol";

contract $ERC165NotSupportedUpgradeableWithInit is $ERC165NotSupportedUpgradeable {
    constructor() payable initializer {
        __$ERC165NotSupported_init();
    }
}
import "../../contracts-exposed/mocks/ERC165/ERC165ReturnBombUpgradeable.sol";

contract $ERC165ReturnBombMockUpgradeableWithInit is $ERC165ReturnBombMockUpgradeable {
    constructor() payable initializer {
        __$ERC165ReturnBombMock_init();
    }
}
import "../../contracts-exposed/mocks/ERC20MockUpgradeable.sol";

contract $ERC20MockUpgradeableWithInit is $ERC20MockUpgradeable {
    constructor() payable initializer {
        __$ERC20Mock_init();
    }
}
import "../../contracts-exposed/mocks/ERC20ReentrantUpgradeable.sol";

contract $ERC20ReentrantUpgradeableWithInit is $ERC20ReentrantUpgradeable {
    constructor() payable initializer {
        __$ERC20Reentrant_init();
    }
}
import "../../contracts-exposed/mocks/ERC2771ContextMockUpgradeable.sol";

contract $ERC2771ContextMockUpgradeableWithInit is $ERC2771ContextMockUpgradeable {
    constructor(address trustedForwarder) payable initializer {
        __$ERC2771ContextMock_init(trustedForwarder);
    }
}
import "../../contracts-exposed/mocks/ERC3156FlashBorrowerMockUpgradeable.sol";

contract $ERC3156FlashBorrowerMockUpgradeableWithInit is $ERC3156FlashBorrowerMockUpgradeable {
    constructor(bool enableReturn, bool enableApprove) payable initializer {
        __$ERC3156FlashBorrowerMock_init(enableReturn, enableApprove);
    }
}
import "../../contracts-exposed/mocks/ERC4626MockUpgradeable.sol";

contract $ERC4626MockUpgradeableWithInit is $ERC4626MockUpgradeable {
    constructor(address underlying) payable initializer {
        __$ERC4626Mock_init(underlying);
    }
}
import "../../contracts-exposed/mocks/EtherReceiverMockUpgradeable.sol";

contract $EtherReceiverMockUpgradeableWithInit is $EtherReceiverMockUpgradeable {
    constructor() payable initializer {
        __$EtherReceiverMock_init();
    }
}
import "../../contracts-exposed/mocks/governance/GovernorCompatibilityBravoMockUpgradeable.sol";

contract $GovernorCompatibilityBravoMockUpgradeableWithInit is $GovernorCompatibilityBravoMockUpgradeable {
    constructor(string memory name_, uint256 initialVotingDelay, uint256 initialVotingPeriod, uint256 initialProposalThreshold, ICompoundTimelockUpgradeable timelockAddress, ERC20VotesCompUpgradeable token_) payable initializer {
        __$GovernorCompatibilityBravoMock_init(name_, initialVotingDelay, initialVotingPeriod, initialProposalThreshold, timelockAddress, token_);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorCompMockUpgradeable.sol";

contract $GovernorCompMockUpgradeableWithInit is $GovernorCompMockUpgradeable {
    constructor(string memory name_, ERC20VotesCompUpgradeable token_) payable initializer {
        __$GovernorCompMock_init(name_, token_);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorMockUpgradeable.sol";

contract $GovernorMockUpgradeableWithInit is $GovernorMockUpgradeable {
    constructor(string memory name_, uint256 initialVotingDelay, uint256 initialVotingPeriod, uint256 initialProposalThreshold, IVotesUpgradeable tokenAddress, uint256 quorumNumeratorValue) payable initializer {
        __$GovernorMock_init(name_, initialVotingDelay, initialVotingPeriod, initialProposalThreshold, tokenAddress, quorumNumeratorValue);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorPreventLateQuorumMockUpgradeable.sol";

contract $GovernorPreventLateQuorumMockUpgradeableWithInit is $GovernorPreventLateQuorumMockUpgradeable {
    constructor(string memory name_, uint256 initialVotingDelay, uint256 initialVotingPeriod, uint256 initialProposalThreshold, IVotesUpgradeable tokenAddress, uint64 initialVoteExtension, uint256 quorum_) payable initializer {
        __$GovernorPreventLateQuorumMock_init(name_, initialVotingDelay, initialVotingPeriod, initialProposalThreshold, tokenAddress, initialVoteExtension, quorum_);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorTimelockCompoundMockUpgradeable.sol";

contract $GovernorTimelockCompoundMockUpgradeableWithInit is $GovernorTimelockCompoundMockUpgradeable {
    constructor(string memory name_, uint256 initialVotingDelay, uint256 initialVotingPeriod, uint256 initialProposalThreshold, ICompoundTimelockUpgradeable timelockAddress, IVotesUpgradeable tokenAddress, uint256 quorumNumeratorValue) payable initializer {
        __$GovernorTimelockCompoundMock_init(name_, initialVotingDelay, initialVotingPeriod, initialProposalThreshold, timelockAddress, tokenAddress, quorumNumeratorValue);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorTimelockControlMockUpgradeable.sol";

contract $GovernorTimelockControlMockUpgradeableWithInit is $GovernorTimelockControlMockUpgradeable {
    constructor(string memory name_, uint256 initialVotingDelay, uint256 initialVotingPeriod, uint256 initialProposalThreshold, TimelockControllerUpgradeable timelockAddress, IVotesUpgradeable tokenAddress, uint256 quorumNumeratorValue) payable initializer {
        __$GovernorTimelockControlMock_init(name_, initialVotingDelay, initialVotingPeriod, initialProposalThreshold, timelockAddress, tokenAddress, quorumNumeratorValue);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorVoteMockUpgradeable.sol";

contract $GovernorVoteMocksUpgradeableWithInit is $GovernorVoteMocksUpgradeable {
    constructor(string memory name_, IVotesUpgradeable tokenAddress) payable initializer {
        __$GovernorVoteMocks_init(name_, tokenAddress);
    }
}
import "../../contracts-exposed/mocks/governance/GovernorWithParamsMockUpgradeable.sol";

contract $GovernorWithParamsMockUpgradeableWithInit is $GovernorWithParamsMockUpgradeable {
    constructor(string memory name_, IVotesUpgradeable tokenAddress) payable initializer {
        __$GovernorWithParamsMock_init(name_, tokenAddress);
    }
}
import "../../contracts-exposed/mocks/MulticallTestUpgradeable.sol";

contract $MulticallTestUpgradeableWithInit is $MulticallTestUpgradeable {
    constructor() payable initializer {
        __$MulticallTest_init();
    }
}
import "../../contracts-exposed/mocks/PausableMockUpgradeable.sol";

contract $PausableMockUpgradeableWithInit is $PausableMockUpgradeable {
    constructor() payable initializer {
        __$PausableMock_init();
    }
}
import "../../contracts-exposed/mocks/proxy/BadBeaconUpgradeable.sol";

contract $BadBeaconNoImplUpgradeableWithInit is $BadBeaconNoImplUpgradeable {
    constructor() payable initializer {
        __$BadBeaconNoImpl_init();
    }
}
import "../../contracts-exposed/mocks/proxy/BadBeaconUpgradeable.sol";

contract $BadBeaconNotContractUpgradeableWithInit is $BadBeaconNotContractUpgradeable {
    constructor() payable initializer {
        __$BadBeaconNotContract_init();
    }
}
import "../../contracts-exposed/mocks/proxy/ClashingImplementationUpgradeable.sol";

contract $ClashingImplementationUpgradeableWithInit is $ClashingImplementationUpgradeable {
    constructor() payable initializer {
        __$ClashingImplementation_init();
    }
}
import "../../contracts-exposed/mocks/proxy/UUPSLegacyUpgradeable.sol";

contract $UUPSUpgradeableLegacyMockUpgradeableWithInit is $UUPSUpgradeableLegacyMockUpgradeable {
    constructor() payable initializer {
        __$UUPSUpgradeableLegacyMock_init();
    }
}
import "../../contracts-exposed/mocks/proxy/UUPSUpgradeableMockUpgradeable.sol";

contract $NonUpgradeableMockUpgradeableWithInit is $NonUpgradeableMockUpgradeable {
    constructor() payable initializer {
        __$NonUpgradeableMock_init();
    }
}
import "../../contracts-exposed/mocks/proxy/UUPSUpgradeableMockUpgradeable.sol";

contract $UUPSUpgradeableMockUpgradeableWithInit is $UUPSUpgradeableMockUpgradeable {
    constructor() payable initializer {
        __$UUPSUpgradeableMock_init();
    }
}
import "../../contracts-exposed/mocks/proxy/UUPSUpgradeableMockUpgradeable.sol";

contract $UUPSUpgradeableUnsafeMockUpgradeableWithInit is $UUPSUpgradeableUnsafeMockUpgradeable {
    constructor() payable initializer {
        __$UUPSUpgradeableUnsafeMock_init();
    }
}
import "../../contracts-exposed/mocks/PullPaymentMockUpgradeable.sol";

contract $PullPaymentMockUpgradeableWithInit is $PullPaymentMockUpgradeable {
    constructor() payable initializer {
        __$PullPaymentMock_init();
    }
}
import "../../contracts-exposed/mocks/ReentrancyAttackUpgradeable.sol";

contract $ReentrancyAttackUpgradeableWithInit is $ReentrancyAttackUpgradeable {
    constructor() payable initializer {
        __$ReentrancyAttack_init();
    }
}
import "../../contracts-exposed/mocks/ReentrancyMockUpgradeable.sol";

contract $ReentrancyMockUpgradeableWithInit is $ReentrancyMockUpgradeable {
    constructor() payable initializer {
        __$ReentrancyMock_init();
    }
}
import "../../contracts-exposed/mocks/SafeMathMemoryCheckUpgradeable.sol";

contract $SafeMathMemoryCheckUpgradeableWithInit is $SafeMathMemoryCheckUpgradeable {
    constructor() payable initializer {
        __$SafeMathMemoryCheck_init();
    }
}
import "../../contracts-exposed/mocks/StorageSlotMockUpgradeable.sol";

contract $StorageSlotMockUpgradeableWithInit is $StorageSlotMockUpgradeable {
    constructor() payable initializer {
        __$StorageSlotMock_init();
    }
}
import "../../contracts-exposed/mocks/TimelockReentrantUpgradeable.sol";

contract $TimelockReentrantUpgradeableWithInit is $TimelockReentrantUpgradeable {
    constructor() payable initializer {
        __$TimelockReentrant_init();
    }
}
import "../../contracts-exposed/mocks/TimersBlockNumberImplUpgradeable.sol";

contract $TimersBlockNumberImplUpgradeableWithInit is $TimersBlockNumberImplUpgradeable {
    constructor() payable initializer {
        __$TimersBlockNumberImpl_init();
    }
}
import "../../contracts-exposed/mocks/TimersTimestampImplUpgradeable.sol";

contract $TimersTimestampImplUpgradeableWithInit is $TimersTimestampImplUpgradeable {
    constructor() payable initializer {
        __$TimersTimestampImpl_init();
    }
}
import "../../contracts-exposed/mocks/token/ERC1155ReceiverMockUpgradeable.sol";

contract $ERC1155ReceiverMockUpgradeableWithInit is $ERC1155ReceiverMockUpgradeable {
    constructor(bytes4 recRetval, bool recReverts, bytes4 batRetval, bool batReverts) payable initializer {
        __$ERC1155ReceiverMock_init(recRetval, recReverts, batRetval, batReverts);
    }
}
import "../../contracts-exposed/mocks/token/ERC20DecimalsMockUpgradeable.sol";

contract $ERC20DecimalsMockUpgradeableWithInit is $ERC20DecimalsMockUpgradeable {
    constructor(string memory name_, string memory symbol_, uint8 decimals_) payable initializer {
        __$ERC20DecimalsMock_init(name_, symbol_, decimals_);
    }
}
import "../../contracts-exposed/mocks/token/ERC20ExcessDecimalsMockUpgradeable.sol";

contract $ERC20ExcessDecimalsMockUpgradeableWithInit is $ERC20ExcessDecimalsMockUpgradeable {
    constructor() payable initializer {
        __$ERC20ExcessDecimalsMock_init();
    }
}
import "../../contracts-exposed/mocks/token/ERC20FlashMintMockUpgradeable.sol";

contract $ERC20FlashMintMockUpgradeableWithInit is $ERC20FlashMintMockUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20FlashMintMock_init(name_, symbol_);
    }
}
import "../../contracts-exposed/mocks/token/ERC20ForceApproveMockUpgradeable.sol";

contract $ERC20ForceApproveMockUpgradeableWithInit is $ERC20ForceApproveMockUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20ForceApproveMock_init(name_, symbol_);
    }
}
import "../../contracts-exposed/mocks/token/ERC20MulticallMockUpgradeable.sol";

contract $ERC20MulticallMockUpgradeableWithInit is $ERC20MulticallMockUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20MulticallMock_init(name_, symbol_);
    }
}
import "../../contracts-exposed/mocks/token/ERC20NoReturnMockUpgradeable.sol";

contract $ERC20NoReturnMockUpgradeableWithInit is $ERC20NoReturnMockUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20NoReturnMock_init(name_, symbol_);
    }
}
import "../../contracts-exposed/mocks/token/ERC20PermitNoRevertMockUpgradeable.sol";

contract $ERC20PermitNoRevertMockUpgradeableWithInit is $ERC20PermitNoRevertMockUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20PermitNoRevertMock_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/mocks/token/ERC20ReturnFalseMockUpgradeable.sol";

contract $ERC20ReturnFalseMockUpgradeableWithInit is $ERC20ReturnFalseMockUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20ReturnFalseMock_init(name_, symbol_);
    }
}
import "../../contracts-exposed/mocks/token/ERC20VotesLegacyMockUpgradeable.sol";

contract $ERC20VotesLegacyMockUpgradeableWithInit is $ERC20VotesLegacyMockUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20VotesLegacyMock_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/mocks/token/ERC4626OffsetMockUpgradeable.sol";

contract $ERC4626OffsetMockUpgradeableWithInit is $ERC4626OffsetMockUpgradeable {
    constructor(string memory name_, string memory symbol_, IERC20Upgradeable asset_, uint8 offset_) payable initializer {
        __$ERC4626OffsetMock_init(name_, symbol_, asset_, offset_);
    }
}
import "../../contracts-exposed/mocks/token/ERC4646FeesMockUpgradeable.sol";

contract $ERC4626FeesMockUpgradeableWithInit is $ERC4626FeesMockUpgradeable {
    constructor(string memory name_, string memory symbol_, IERC20Upgradeable asset_, uint256 entryFeeBasePoint, address entryFeeRecipient, uint256 exitFeeBasePoint, address exitFeeRecipient) payable initializer {
        __$ERC4626FeesMock_init(name_, symbol_, asset_, entryFeeBasePoint, entryFeeRecipient, exitFeeBasePoint, exitFeeRecipient);
    }
}
import "../../contracts-exposed/mocks/token/ERC721ConsecutiveEnumerableMockUpgradeable.sol";

contract $ERC721ConsecutiveEnumerableMockUpgradeableWithInit is $ERC721ConsecutiveEnumerableMockUpgradeable {
    constructor(string memory name, string memory symbol, address[] memory receivers, uint96[] memory amounts) payable initializer {
        __$ERC721ConsecutiveEnumerableMock_init(name, symbol, receivers, amounts);
    }
}
import "../../contracts-exposed/mocks/token/ERC721ConsecutiveMockUpgradeable.sol";

contract $ERC721ConsecutiveMockUpgradeableWithInit is $ERC721ConsecutiveMockUpgradeable {
    constructor(string memory name, string memory symbol, address[] memory delegates, address[] memory receivers, uint96[] memory amounts) payable initializer {
        __$ERC721ConsecutiveMock_init(name, symbol, delegates, receivers, amounts);
    }
}
import "../../contracts-exposed/mocks/token/ERC721ConsecutiveMockUpgradeable.sol";

contract $ERC721ConsecutiveNoConstructorMintMockUpgradeableWithInit is $ERC721ConsecutiveNoConstructorMintMockUpgradeable {
    constructor(string memory name, string memory symbol) payable initializer {
        __$ERC721ConsecutiveNoConstructorMintMock_init(name, symbol);
    }
}
import "../../contracts-exposed/mocks/token/ERC721ReceiverMockUpgradeable.sol";

contract $ERC721ReceiverMockUpgradeableWithInit is $ERC721ReceiverMockUpgradeable {
    constructor(bytes4 retval, ERC721ReceiverMockUpgradeable.Error error) payable initializer {
        __$ERC721ReceiverMock_init(retval, error);
    }
}
import "../../contracts-exposed/mocks/token/ERC721URIStorageMockUpgradeable.sol";

contract $ERC721URIStorageMockUpgradeableWithInit is $ERC721URIStorageMockUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721URIStorageMock_init(name_, symbol_);
    }
}
import "../../contracts-exposed/mocks/token/ERC777MockUpgradeable.sol";

contract $ERC777MockUpgradeableWithInit is $ERC777MockUpgradeable {
    constructor(string memory name_, string memory symbol_, address[] memory defaultOperators_) payable initializer {
        __$ERC777Mock_init(name_, symbol_, defaultOperators_);
    }
}
import "../../contracts-exposed/mocks/token/ERC777SenderRecipientMockUpgradeable.sol";

contract $ERC777SenderRecipientMockUpgradeableWithInit is $ERC777SenderRecipientMockUpgradeable {
    constructor() payable initializer {
        __$ERC777SenderRecipientMock_init();
    }
}
import "../../contracts-exposed/mocks/token/VotesTimestampUpgradeable.sol";

contract $ERC20VotesTimestampMockUpgradeableWithInit is $ERC20VotesTimestampMockUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20VotesTimestampMock_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/mocks/token/VotesTimestampUpgradeable.sol";

contract $ERC20VotesCompTimestampMockUpgradeableWithInit is $ERC20VotesCompTimestampMockUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20VotesCompTimestampMock_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/mocks/token/VotesTimestampUpgradeable.sol";

contract $ERC721VotesTimestampMockUpgradeableWithInit is $ERC721VotesTimestampMockUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name, string memory version) payable initializer {
        __$ERC721VotesTimestampMock_init(name_, symbol_, name, version);
    }
}
import "../../contracts-exposed/mocks/VotesMockUpgradeable.sol";

contract $VotesMockUpgradeableWithInit is $VotesMockUpgradeable {
    constructor(string memory name, string memory version) payable initializer {
        __$VotesMock_init(name, version);
    }
}
import "../../contracts-exposed/mocks/VotesMockUpgradeable.sol";

contract $VotesTimestampMockUpgradeableWithInit is $VotesTimestampMockUpgradeable {
    constructor(string memory name, string memory version) payable initializer {
        __$VotesTimestampMock_init(name, version);
    }
}
import "../../contracts-exposed/mocks/wizard/MyGovernor1Upgradeable.sol";

contract $MyGovernor1UpgradeableWithInit is $MyGovernor1Upgradeable {
    constructor(IVotesUpgradeable _token, TimelockControllerUpgradeable _timelock) payable initializer {
        __$MyGovernor1_init(_token, _timelock);
    }
}
import "../../contracts-exposed/mocks/wizard/MyGovernor2Upgradeable.sol";

contract $MyGovernor2UpgradeableWithInit is $MyGovernor2Upgradeable {
    constructor(IVotesUpgradeable _token, TimelockControllerUpgradeable _timelock) payable initializer {
        __$MyGovernor2_init(_token, _timelock);
    }
}
import "../../contracts-exposed/mocks/wizard/MyGovernor3Upgradeable.sol";

contract $MyGovernor3UpgradeableWithInit is $MyGovernor3Upgradeable {
    constructor(IVotesUpgradeable _token, TimelockControllerUpgradeable _timelock) payable initializer {
        __$MyGovernor3_init(_token, _timelock);
    }
}
import "../../contracts-exposed/proxy/beacon/BeaconProxyUpgradeable.sol";

contract $BeaconProxyUpgradeableWithInit is $BeaconProxyUpgradeable {
    constructor(address beacon, bytes memory data) payable initializer {
        __$BeaconProxy_init(beacon, data);
    }
}
import "../../contracts-exposed/proxy/beacon/UpgradeableBeaconUpgradeable.sol";

contract $UpgradeableBeaconUpgradeableWithInit is $UpgradeableBeaconUpgradeable {
    constructor(address implementation_) payable initializer {
        __$UpgradeableBeacon_init(implementation_);
    }
}
import "../../contracts-exposed/proxy/ClonesUpgradeable.sol";

contract $ClonesUpgradeableWithInit is $ClonesUpgradeable {
    constructor() payable initializer {
        __$Clones_init();
    }
}
import "../../contracts-exposed/proxy/ERC1967/ERC1967ProxyUpgradeable.sol";

contract $ERC1967ProxyUpgradeableWithInit is $ERC1967ProxyUpgradeable {
    constructor(address _logic, bytes memory _data) payable initializer {
        __$ERC1967Proxy_init(_logic, _data);
    }
}
import "../../contracts-exposed/proxy/ERC1967/ERC1967UpgradeUpgradeable.sol";

contract $ERC1967UpgradeUpgradeableWithInit is $ERC1967UpgradeUpgradeable {
    constructor() payable initializer {
        __$ERC1967Upgrade_init();
    }
}
import "../../contracts-exposed/proxy/transparent/ProxyAdminUpgradeable.sol";

contract $ProxyAdminUpgradeableWithInit is $ProxyAdminUpgradeable {
    constructor() payable initializer {
        __$ProxyAdmin_init();
    }
}
import "../../contracts-exposed/proxy/transparent/TransparentUpgradeableProxyUpgradeable.sol";

contract $TransparentUpgradeableProxyUpgradeableWithInit is $TransparentUpgradeableProxyUpgradeable {
    constructor(address _logic, address admin_, bytes memory _data) payable initializer {
        __$TransparentUpgradeableProxy_init(_logic, admin_, _data);
    }
}
import "../../contracts-exposed/security/PausableUpgradeable.sol";

contract $PausableUpgradeableWithInit is $PausableUpgradeable {
    constructor() payable initializer {
        __$Pausable_init();
    }
}
import "../../contracts-exposed/security/PullPaymentUpgradeable.sol";

contract $PullPaymentUpgradeableWithInit is $PullPaymentUpgradeable {
    constructor() payable initializer {
        __$PullPayment_init();
    }
}
import "../../contracts-exposed/security/ReentrancyGuardUpgradeable.sol";

contract $ReentrancyGuardUpgradeableWithInit is $ReentrancyGuardUpgradeable {
    constructor() payable initializer {
        __$ReentrancyGuard_init();
    }
}
import "../../contracts-exposed/token/common/ERC2981Upgradeable.sol";

contract $ERC2981UpgradeableWithInit is $ERC2981Upgradeable {
    constructor() payable initializer {
        __$ERC2981_init();
    }
}
import "../../contracts-exposed/token/ERC1155/ERC1155Upgradeable.sol";

contract $ERC1155UpgradeableWithInit is $ERC1155Upgradeable {
    constructor(string memory uri_) payable initializer {
        __$ERC1155_init(uri_);
    }
}
import "../../contracts-exposed/token/ERC1155/extensions/ERC1155BurnableUpgradeable.sol";

contract $ERC1155BurnableUpgradeableWithInit is $ERC1155BurnableUpgradeable {
    constructor(string memory uri_) payable initializer {
        __$ERC1155Burnable_init(uri_);
    }
}
import "../../contracts-exposed/token/ERC1155/extensions/ERC1155PausableUpgradeable.sol";

contract $ERC1155PausableUpgradeableWithInit is $ERC1155PausableUpgradeable {
    constructor(string memory uri_) payable initializer {
        __$ERC1155Pausable_init(uri_);
    }
}
import "../../contracts-exposed/token/ERC1155/extensions/ERC1155SupplyUpgradeable.sol";

contract $ERC1155SupplyUpgradeableWithInit is $ERC1155SupplyUpgradeable {
    constructor(string memory uri_) payable initializer {
        __$ERC1155Supply_init(uri_);
    }
}
import "../../contracts-exposed/token/ERC1155/extensions/ERC1155URIStorageUpgradeable.sol";

contract $ERC1155URIStorageUpgradeableWithInit is $ERC1155URIStorageUpgradeable {
    constructor(string memory uri_) payable initializer {
        __$ERC1155URIStorage_init(uri_);
    }
}
import "../../contracts-exposed/token/ERC1155/presets/ERC1155PresetMinterPauserUpgradeable.sol";

contract $ERC1155PresetMinterPauserUpgradeableWithInit is $ERC1155PresetMinterPauserUpgradeable {
    constructor(string memory uri) payable initializer {
        __$ERC1155PresetMinterPauser_init(uri);
    }
}
import "../../contracts-exposed/token/ERC1155/utils/ERC1155HolderUpgradeable.sol";

contract $ERC1155HolderUpgradeableWithInit is $ERC1155HolderUpgradeable {
    constructor() payable initializer {
        __$ERC1155Holder_init();
    }
}
import "../../contracts-exposed/token/ERC20/ERC20Upgradeable.sol";

contract $ERC20UpgradeableWithInit is $ERC20Upgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";

contract $ERC20BurnableUpgradeableWithInit is $ERC20BurnableUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20Burnable_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20CappedUpgradeable.sol";

contract $ERC20CappedUpgradeableWithInit is $ERC20CappedUpgradeable {
    constructor(string memory name_, string memory symbol_, uint256 cap_) payable initializer {
        __$ERC20Capped_init(name_, symbol_, cap_);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20FlashMintUpgradeable.sol";

contract $ERC20FlashMintUpgradeableWithInit is $ERC20FlashMintUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20FlashMint_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20PausableUpgradeable.sol";

contract $ERC20PausableUpgradeableWithInit is $ERC20PausableUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20Pausable_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20PermitUpgradeable.sol";

contract $ERC20PermitUpgradeableWithInit is $ERC20PermitUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20Permit_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20SnapshotUpgradeable.sol";

contract $ERC20SnapshotUpgradeableWithInit is $ERC20SnapshotUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC20Snapshot_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20VotesUpgradeable.sol";

contract $ERC20VotesUpgradeableWithInit is $ERC20VotesUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20Votes_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20VotesCompUpgradeable.sol";

contract $ERC20VotesCompUpgradeableWithInit is $ERC20VotesCompUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name) payable initializer {
        __$ERC20VotesComp_init(name_, symbol_, name);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC20WrapperUpgradeable.sol";

contract $ERC20WrapperUpgradeableWithInit is $ERC20WrapperUpgradeable {
    constructor(string memory name_, string memory symbol_, IERC20Upgradeable underlyingToken) payable initializer {
        __$ERC20Wrapper_init(name_, symbol_, underlyingToken);
    }
}
import "../../contracts-exposed/token/ERC20/extensions/ERC4626Upgradeable.sol";

contract $ERC4626UpgradeableWithInit is $ERC4626Upgradeable {
    constructor(string memory name_, string memory symbol_, IERC20Upgradeable asset_) payable initializer {
        __$ERC4626_init(name_, symbol_, asset_);
    }
}
import "../../contracts-exposed/token/ERC20/presets/ERC20PresetFixedSupplyUpgradeable.sol";

contract $ERC20PresetFixedSupplyUpgradeableWithInit is $ERC20PresetFixedSupplyUpgradeable {
    constructor(string memory name, string memory symbol, uint256 initialSupply, address owner) payable initializer {
        __$ERC20PresetFixedSupply_init(name, symbol, initialSupply, owner);
    }
}
import "../../contracts-exposed/token/ERC20/presets/ERC20PresetMinterPauserUpgradeable.sol";

contract $ERC20PresetMinterPauserUpgradeableWithInit is $ERC20PresetMinterPauserUpgradeable {
    constructor(string memory name, string memory symbol) payable initializer {
        __$ERC20PresetMinterPauser_init(name, symbol);
    }
}
import "../../contracts-exposed/token/ERC20/utils/SafeERC20Upgradeable.sol";

contract $SafeERC20UpgradeableWithInit is $SafeERC20Upgradeable {
    constructor() payable initializer {
        __$SafeERC20_init();
    }
}
import "../../contracts-exposed/token/ERC20/utils/TokenTimelockUpgradeable.sol";

contract $TokenTimelockUpgradeableWithInit is $TokenTimelockUpgradeable {
    constructor(IERC20Upgradeable token_, address beneficiary_, uint256 releaseTime_) payable initializer {
        __$TokenTimelock_init(token_, beneficiary_, releaseTime_);
    }
}
import "../../contracts-exposed/token/ERC721/ERC721Upgradeable.sol";

contract $ERC721UpgradeableWithInit is $ERC721Upgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721BurnableUpgradeable.sol";

contract $ERC721BurnableUpgradeableWithInit is $ERC721BurnableUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721Burnable_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721ConsecutiveUpgradeable.sol";

contract $ERC721ConsecutiveUpgradeableWithInit is $ERC721ConsecutiveUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721Consecutive_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";

contract $ERC721EnumerableUpgradeableWithInit is $ERC721EnumerableUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721Enumerable_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721PausableUpgradeable.sol";

contract $ERC721PausableUpgradeableWithInit is $ERC721PausableUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721Pausable_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721RoyaltyUpgradeable.sol";

contract $ERC721RoyaltyUpgradeableWithInit is $ERC721RoyaltyUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721Royalty_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol";

contract $ERC721URIStorageUpgradeableWithInit is $ERC721URIStorageUpgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __$ERC721URIStorage_init(name_, symbol_);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721VotesUpgradeable.sol";

contract $ERC721VotesUpgradeableWithInit is $ERC721VotesUpgradeable {
    constructor(string memory name_, string memory symbol_, string memory name, string memory version) payable initializer {
        __$ERC721Votes_init(name_, symbol_, name, version);
    }
}
import "../../contracts-exposed/token/ERC721/extensions/ERC721WrapperUpgradeable.sol";

contract $ERC721WrapperUpgradeableWithInit is $ERC721WrapperUpgradeable {
    constructor(string memory name_, string memory symbol_, IERC721Upgradeable underlyingToken) payable initializer {
        __$ERC721Wrapper_init(name_, symbol_, underlyingToken);
    }
}
import "../../contracts-exposed/token/ERC721/presets/ERC721PresetMinterPauserAutoIdUpgradeable.sol";

contract $ERC721PresetMinterPauserAutoIdUpgradeableWithInit is $ERC721PresetMinterPauserAutoIdUpgradeable {
    constructor(string memory name, string memory symbol, string memory baseTokenURI) payable initializer {
        __$ERC721PresetMinterPauserAutoId_init(name, symbol, baseTokenURI);
    }
}
import "../../contracts-exposed/token/ERC721/utils/ERC721HolderUpgradeable.sol";

contract $ERC721HolderUpgradeableWithInit is $ERC721HolderUpgradeable {
    constructor() payable initializer {
        __$ERC721Holder_init();
    }
}
import "../../contracts-exposed/token/ERC777/ERC777Upgradeable.sol";

contract $ERC777UpgradeableWithInit is $ERC777Upgradeable {
    constructor(string memory name_, string memory symbol_, address[] memory defaultOperators_) payable initializer {
        __$ERC777_init(name_, symbol_, defaultOperators_);
    }
}
import "../../contracts-exposed/token/ERC777/presets/ERC777PresetFixedSupplyUpgradeable.sol";

contract $ERC777PresetFixedSupplyUpgradeableWithInit is $ERC777PresetFixedSupplyUpgradeable {
    constructor(string memory name, string memory symbol, address[] memory defaultOperators, uint256 initialSupply, address owner) payable initializer {
        __$ERC777PresetFixedSupply_init(name, symbol, defaultOperators, initialSupply, owner);
    }
}
import "../../contracts-exposed/utils/AddressUpgradeable.sol";

contract $AddressUpgradeableWithInit is $AddressUpgradeable {
    constructor() payable initializer {
        __$Address_init();
    }
}
import "../../contracts-exposed/utils/ArraysUpgradeable.sol";

contract $ArraysUpgradeableWithInit is $ArraysUpgradeable {
    constructor() payable initializer {
        __$Arrays_init();
    }
}
import "../../contracts-exposed/utils/Base64Upgradeable.sol";

contract $Base64UpgradeableWithInit is $Base64Upgradeable {
    constructor() payable initializer {
        __$Base64_init();
    }
}
import "../../contracts-exposed/utils/CheckpointsUpgradeable.sol";

contract $CheckpointsUpgradeableWithInit is $CheckpointsUpgradeable {
    constructor() payable initializer {
        __$Checkpoints_init();
    }
}
import "../../contracts-exposed/utils/ContextUpgradeable.sol";

contract $ContextUpgradeableWithInit is $ContextUpgradeable {
    constructor() payable initializer {
        __$Context_init();
    }
}
import "../../contracts-exposed/utils/CountersUpgradeable.sol";

contract $CountersUpgradeableWithInit is $CountersUpgradeable {
    constructor() payable initializer {
        __$Counters_init();
    }
}
import "../../contracts-exposed/utils/Create2Upgradeable.sol";

contract $Create2UpgradeableWithInit is $Create2Upgradeable {
    constructor() payable initializer {
        __$Create2_init();
    }
}
import "../../contracts-exposed/utils/cryptography/ECDSAUpgradeable.sol";

contract $ECDSAUpgradeableWithInit is $ECDSAUpgradeable {
    constructor() payable initializer {
        __$ECDSA_init();
    }
}
import "../../contracts-exposed/utils/cryptography/EIP712Upgradeable.sol";

contract $EIP712UpgradeableWithInit is $EIP712Upgradeable {
    constructor(string memory name, string memory version) payable initializer {
        __$EIP712_init(name, version);
    }
}
import "../../contracts-exposed/utils/cryptography/MerkleProofUpgradeable.sol";

contract $MerkleProofUpgradeableWithInit is $MerkleProofUpgradeable {
    constructor() payable initializer {
        __$MerkleProof_init();
    }
}
import "../../contracts-exposed/utils/cryptography/SignatureCheckerUpgradeable.sol";

contract $SignatureCheckerUpgradeableWithInit is $SignatureCheckerUpgradeable {
    constructor() payable initializer {
        __$SignatureChecker_init();
    }
}
import "../../contracts-exposed/utils/escrow/EscrowUpgradeable.sol";

contract $EscrowUpgradeableWithInit is $EscrowUpgradeable {
    constructor() payable initializer {
        __$Escrow_init();
    }
}
import "../../contracts-exposed/utils/escrow/RefundEscrowUpgradeable.sol";

contract $RefundEscrowUpgradeableWithInit is $RefundEscrowUpgradeable {
    constructor(address payable beneficiary_) payable initializer {
        __$RefundEscrow_init(beneficiary_);
    }
}
import "../../contracts-exposed/utils/introspection/ERC165Upgradeable.sol";

contract $ERC165UpgradeableWithInit is $ERC165Upgradeable {
    constructor() payable initializer {
        __$ERC165_init();
    }
}
import "../../contracts-exposed/utils/introspection/ERC165CheckerUpgradeable.sol";

contract $ERC165CheckerUpgradeableWithInit is $ERC165CheckerUpgradeable {
    constructor() payable initializer {
        __$ERC165Checker_init();
    }
}
import "../../contracts-exposed/utils/introspection/ERC165StorageUpgradeable.sol";

contract $ERC165StorageUpgradeableWithInit is $ERC165StorageUpgradeable {
    constructor() payable initializer {
        __$ERC165Storage_init();
    }
}
import "../../contracts-exposed/utils/introspection/ERC1820ImplementerUpgradeable.sol";

contract $ERC1820ImplementerUpgradeableWithInit is $ERC1820ImplementerUpgradeable {
    constructor() payable initializer {
        __$ERC1820Implementer_init();
    }
}
import "../../contracts-exposed/utils/math/MathUpgradeable.sol";

contract $MathUpgradeableWithInit is $MathUpgradeable {
    constructor() payable initializer {
        __$Math_init();
    }
}
import "../../contracts-exposed/utils/math/SafeCastUpgradeable.sol";

contract $SafeCastUpgradeableWithInit is $SafeCastUpgradeable {
    constructor() payable initializer {
        __$SafeCast_init();
    }
}
import "../../contracts-exposed/utils/math/SafeMathUpgradeable.sol";

contract $SafeMathUpgradeableWithInit is $SafeMathUpgradeable {
    constructor() payable initializer {
        __$SafeMath_init();
    }
}
import "../../contracts-exposed/utils/math/SignedMathUpgradeable.sol";

contract $SignedMathUpgradeableWithInit is $SignedMathUpgradeable {
    constructor() payable initializer {
        __$SignedMath_init();
    }
}
import "../../contracts-exposed/utils/math/SignedSafeMathUpgradeable.sol";

contract $SignedSafeMathUpgradeableWithInit is $SignedSafeMathUpgradeable {
    constructor() payable initializer {
        __$SignedSafeMath_init();
    }
}
import "../../contracts-exposed/utils/MulticallUpgradeable.sol";

contract $MulticallUpgradeableWithInit is $MulticallUpgradeable {
    constructor() payable initializer {
        __$Multicall_init();
    }
}
import "../../contracts-exposed/utils/ShortStringsUpgradeable.sol";

contract $ShortStringsUpgradeableWithInit is $ShortStringsUpgradeable {
    constructor() payable initializer {
        __$ShortStrings_init();
    }
}
import "../../contracts-exposed/utils/StorageSlotUpgradeable.sol";

contract $StorageSlotUpgradeableWithInit is $StorageSlotUpgradeable {
    constructor() payable initializer {
        __$StorageSlot_init();
    }
}
import "../../contracts-exposed/utils/StringsUpgradeable.sol";

contract $StringsUpgradeableWithInit is $StringsUpgradeable {
    constructor() payable initializer {
        __$Strings_init();
    }
}
import "../../contracts-exposed/utils/structs/BitMapsUpgradeable.sol";

contract $BitMapsUpgradeableWithInit is $BitMapsUpgradeable {
    constructor() payable initializer {
        __$BitMaps_init();
    }
}
import "../../contracts-exposed/utils/structs/DoubleEndedQueueUpgradeable.sol";

contract $DoubleEndedQueueUpgradeableWithInit is $DoubleEndedQueueUpgradeable {
    constructor() payable initializer {
        __$DoubleEndedQueue_init();
    }
}
import "../../contracts-exposed/utils/structs/EnumerableMapUpgradeable.sol";

contract $EnumerableMapUpgradeableWithInit is $EnumerableMapUpgradeable {
    constructor() payable initializer {
        __$EnumerableMap_init();
    }
}
import "../../contracts-exposed/utils/structs/EnumerableSetUpgradeable.sol";

contract $EnumerableSetUpgradeableWithInit is $EnumerableSetUpgradeable {
    constructor() payable initializer {
        __$EnumerableSet_init();
    }
}
import "../crosschain/amb/CrossChainEnabledAMBUpgradeable.sol";

contract CrossChainEnabledAMBUpgradeableWithInit is CrossChainEnabledAMBUpgradeable {
    constructor(address bridge) CrossChainEnabledAMBUpgradeable(bridge) payable initializer {

    }
}
import "../finance/PaymentSplitterUpgradeable.sol";

contract PaymentSplitterUpgradeableWithInit is PaymentSplitterUpgradeable {
    constructor(address[] memory payees, uint256[] memory shares_) payable initializer {
        __PaymentSplitter_init(payees, shares_);
    }
}
import "../finance/VestingWalletUpgradeable.sol";

contract VestingWalletUpgradeableWithInit is VestingWalletUpgradeable {
    constructor(address beneficiaryAddress, uint64 startTimestamp, uint64 durationSeconds) payable initializer {
        __VestingWallet_init(beneficiaryAddress, startTimestamp, durationSeconds);
    }
}
import "../governance/TimelockControllerUpgradeable.sol";

contract TimelockControllerUpgradeableWithInit is TimelockControllerUpgradeable {
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors, address admin) payable initializer {
        __TimelockController_init(minDelay, proposers, executors, admin);
    }
}
import "../metatx/MinimalForwarderUpgradeable.sol";

contract MinimalForwarderUpgradeableWithInit is MinimalForwarderUpgradeable {
    constructor() payable initializer {
        __MinimalForwarder_init();
    }
}
import "./AccessControlCrossChainMockUpgradeable.sol";

contract AccessControlCrossChainMockUpgradeableWithInit is AccessControlCrossChainMockUpgradeable {
    constructor() payable initializer {
        __AccessControlCrossChainMock_init();
    }
}
import "./ArraysMockUpgradeable.sol";

contract Uint256ArraysMockUpgradeableWithInit is Uint256ArraysMockUpgradeable {
    constructor(uint256[] memory array) payable initializer {
        __Uint256ArraysMock_init(array);
    }
}
import "./ArraysMockUpgradeable.sol";

contract AddressArraysMockUpgradeableWithInit is AddressArraysMockUpgradeable {
    constructor(address[] memory array) payable initializer {
        __AddressArraysMock_init(array);
    }
}
import "./ArraysMockUpgradeable.sol";

contract Bytes32ArraysMockUpgradeableWithInit is Bytes32ArraysMockUpgradeable {
    constructor(bytes32[] memory array) payable initializer {
        __Bytes32ArraysMock_init(array);
    }
}
import "./CallReceiverMockUpgradeable.sol";

contract CallReceiverMockUpgradeableWithInit is CallReceiverMockUpgradeable {
    constructor() payable initializer {
        __CallReceiverMock_init();
    }
}
import "./compound/CompTimelockUpgradeable.sol";

contract CompTimelockUpgradeableWithInit is CompTimelockUpgradeable {
    constructor(address admin_, uint256 delay_) payable initializer {
        __CompTimelock_init(admin_, delay_);
    }
}
import "./ConditionalEscrowMockUpgradeable.sol";

contract ConditionalEscrowMockUpgradeableWithInit is ConditionalEscrowMockUpgradeable {
    constructor() payable initializer {
        __ConditionalEscrowMock_init();
    }
}
import "./ContextMockUpgradeable.sol";

contract ContextMockUpgradeableWithInit is ContextMockUpgradeable {
    constructor() payable initializer {
        __ContextMock_init();
    }
}
import "./ContextMockUpgradeable.sol";

contract ContextMockCallerUpgradeableWithInit is ContextMockCallerUpgradeable {
    constructor() payable initializer {
        __ContextMockCaller_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgeAMBMockUpgradeableWithInit is BridgeAMBMockUpgradeable {
    constructor() payable initializer {
        __BridgeAMBMock_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgeArbitrumL1MockUpgradeableWithInit is BridgeArbitrumL1MockUpgradeable {
    constructor() payable initializer {
        __BridgeArbitrumL1Mock_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgeArbitrumL1InboxUpgradeableWithInit is BridgeArbitrumL1InboxUpgradeable {
    constructor() payable initializer {
        __BridgeArbitrumL1Inbox_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgeArbitrumL1OutboxUpgradeableWithInit is BridgeArbitrumL1OutboxUpgradeable {
    constructor() payable initializer {
        __BridgeArbitrumL1Outbox_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgeArbitrumL2MockUpgradeableWithInit is BridgeArbitrumL2MockUpgradeable {
    constructor() payable initializer {
        __BridgeArbitrumL2Mock_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgeOptimismMockUpgradeableWithInit is BridgeOptimismMockUpgradeable {
    constructor() payable initializer {
        __BridgeOptimismMock_init();
    }
}
import "./crosschain/bridgesUpgradeable.sol";

contract BridgePolygonChildMockUpgradeableWithInit is BridgePolygonChildMockUpgradeable {
    constructor() payable initializer {
        __BridgePolygonChildMock_init();
    }
}
import "./crosschain/receiversUpgradeable.sol";

contract CrossChainEnabledAMBMockUpgradeableWithInit is CrossChainEnabledAMBMockUpgradeable {
    constructor(address bridge) CrossChainEnabledAMBMockUpgradeable(bridge) payable initializer {

    }
}
import "./crosschain/receiversUpgradeable.sol";

contract CrossChainEnabledArbitrumL1MockUpgradeableWithInit is CrossChainEnabledArbitrumL1MockUpgradeable {
    constructor(address bridge) CrossChainEnabledArbitrumL1MockUpgradeable(bridge) payable initializer {

    }
}
import "./crosschain/receiversUpgradeable.sol";

contract CrossChainEnabledArbitrumL2MockUpgradeableWithInit is CrossChainEnabledArbitrumL2MockUpgradeable {
    constructor() payable initializer {
        __CrossChainEnabledArbitrumL2Mock_init();
    }
}
import "./crosschain/receiversUpgradeable.sol";

contract CrossChainEnabledOptimismMockUpgradeableWithInit is CrossChainEnabledOptimismMockUpgradeable {
    constructor(address bridge) CrossChainEnabledOptimismMockUpgradeable(bridge) payable initializer {

    }
}
import "./crosschain/receiversUpgradeable.sol";

contract CrossChainEnabledPolygonChildMockUpgradeableWithInit is CrossChainEnabledPolygonChildMockUpgradeable {
    constructor(address bridge) CrossChainEnabledPolygonChildMockUpgradeable(bridge) payable initializer {

    }
}
import "./docs/governance/MyGovernorUpgradeable.sol";

contract MyGovernorUpgradeableWithInit is MyGovernorUpgradeable {
    constructor(
        IVotesUpgradeable _token,
        TimelockControllerUpgradeable _timelock
    ) payable initializer {
        __MyGovernor_init(_token, _timelock);
    }
}
import "./docs/governance/MyTokenUpgradeable.sol";

contract MyTokenUpgradeableWithInit is MyTokenUpgradeable {
    constructor() payable initializer {
        __MyToken_init();
    }
}
import "./docs/governance/MyTokenTimestampBasedUpgradeable.sol";

contract MyTokenTimestampBasedUpgradeableWithInit is MyTokenTimestampBasedUpgradeable {
    constructor() payable initializer {
        __MyTokenTimestampBased_init();
    }
}
import "./docs/governance/MyTokenWrappedUpgradeable.sol";

contract MyTokenWrappedUpgradeableWithInit is MyTokenWrappedUpgradeable {
    constructor(
        IERC20Upgradeable wrappedToken
    ) payable initializer {
        __MyTokenWrapped_init(wrappedToken);
    }
}
import "./DummyImplementationUpgradeable.sol";

contract DummyImplementationUpgradeableWithInit is DummyImplementationUpgradeable {
    constructor() payable initializer {
        __DummyImplementation_init();
    }
}
import "./DummyImplementationUpgradeable.sol";

contract DummyImplementationV2UpgradeableWithInit is DummyImplementationV2Upgradeable {
    constructor() payable initializer {
        __DummyImplementationV2_init();
    }
}
import "./ERC1271WalletMockUpgradeable.sol";

contract ERC1271WalletMockUpgradeableWithInit is ERC1271WalletMockUpgradeable {
    constructor(address originalOwner) payable initializer {
        __ERC1271WalletMock_init(originalOwner);
    }
}
import "./ERC1271WalletMockUpgradeable.sol";

contract ERC1271MaliciousMockUpgradeableWithInit is ERC1271MaliciousMockUpgradeable {
    constructor() payable initializer {
        __ERC1271MaliciousMock_init();
    }
}
import "./ERC165/ERC165MaliciousDataUpgradeable.sol";

contract ERC165MaliciousDataUpgradeableWithInit is ERC165MaliciousDataUpgradeable {
    constructor() payable initializer {
        __ERC165MaliciousData_init();
    }
}
import "./ERC165/ERC165MissingDataUpgradeable.sol";

contract ERC165MissingDataUpgradeableWithInit is ERC165MissingDataUpgradeable {
    constructor() payable initializer {
        __ERC165MissingData_init();
    }
}
import "./ERC165/ERC165NotSupportedUpgradeable.sol";

contract ERC165NotSupportedUpgradeableWithInit is ERC165NotSupportedUpgradeable {
    constructor() payable initializer {
        __ERC165NotSupported_init();
    }
}
import "./ERC165/ERC165ReturnBombUpgradeable.sol";

contract ERC165ReturnBombMockUpgradeableWithInit is ERC165ReturnBombMockUpgradeable {
    constructor() payable initializer {
        __ERC165ReturnBombMock_init();
    }
}
import "./ERC20MockUpgradeable.sol";

contract ERC20MockUpgradeableWithInit is ERC20MockUpgradeable {
    constructor() payable initializer {
        __ERC20Mock_init();
    }
}
import "./ERC20ReentrantUpgradeable.sol";

contract ERC20ReentrantUpgradeableWithInit is ERC20ReentrantUpgradeable {
    constructor() payable initializer {
        __ERC20Reentrant_init();
    }
}
import "./ERC2771ContextMockUpgradeable.sol";

contract ERC2771ContextMockUpgradeableWithInit is ERC2771ContextMockUpgradeable {
    constructor(address trustedForwarder) ERC2771ContextMockUpgradeable(trustedForwarder) payable initializer {

    }
}
import "./ERC3156FlashBorrowerMockUpgradeable.sol";

contract ERC3156FlashBorrowerMockUpgradeableWithInit is ERC3156FlashBorrowerMockUpgradeable {
    constructor(bool enableReturn, bool enableApprove) payable initializer {
        __ERC3156FlashBorrowerMock_init(enableReturn, enableApprove);
    }
}
import "./ERC4626MockUpgradeable.sol";

contract ERC4626MockUpgradeableWithInit is ERC4626MockUpgradeable {
    constructor(address underlying) payable initializer {
        __ERC4626Mock_init(underlying);
    }
}
import "./EtherReceiverMockUpgradeable.sol";

contract EtherReceiverMockUpgradeableWithInit is EtherReceiverMockUpgradeable {
    constructor() payable initializer {
        __EtherReceiverMock_init();
    }
}
import "./MulticallTestUpgradeable.sol";

contract MulticallTestUpgradeableWithInit is MulticallTestUpgradeable {
    constructor() payable initializer {
        __MulticallTest_init();
    }
}
import "./PausableMockUpgradeable.sol";

contract PausableMockUpgradeableWithInit is PausableMockUpgradeable {
    constructor() payable initializer {
        __PausableMock_init();
    }
}
import "./proxy/BadBeaconUpgradeable.sol";

contract BadBeaconNoImplUpgradeableWithInit is BadBeaconNoImplUpgradeable {
    constructor() payable initializer {
        __BadBeaconNoImpl_init();
    }
}
import "./proxy/BadBeaconUpgradeable.sol";

contract BadBeaconNotContractUpgradeableWithInit is BadBeaconNotContractUpgradeable {
    constructor() payable initializer {
        __BadBeaconNotContract_init();
    }
}
import "./proxy/ClashingImplementationUpgradeable.sol";

contract ClashingImplementationUpgradeableWithInit is ClashingImplementationUpgradeable {
    constructor() payable initializer {
        __ClashingImplementation_init();
    }
}
import "./proxy/UUPSLegacyUpgradeable.sol";

contract UUPSUpgradeableLegacyMockUpgradeableWithInit is UUPSUpgradeableLegacyMockUpgradeable {
    constructor() payable initializer {
        __UUPSUpgradeableLegacyMock_init();
    }
}
import "./proxy/UUPSUpgradeableMockUpgradeable.sol";

contract NonUpgradeableMockUpgradeableWithInit is NonUpgradeableMockUpgradeable {
    constructor() payable initializer {
        __NonUpgradeableMock_init();
    }
}
import "./proxy/UUPSUpgradeableMockUpgradeable.sol";

contract UUPSUpgradeableMockUpgradeableWithInit is UUPSUpgradeableMockUpgradeable {
    constructor() payable initializer {
        __UUPSUpgradeableMock_init();
    }
}
import "./proxy/UUPSUpgradeableMockUpgradeable.sol";

contract UUPSUpgradeableUnsafeMockUpgradeableWithInit is UUPSUpgradeableUnsafeMockUpgradeable {
    constructor() payable initializer {
        __UUPSUpgradeableUnsafeMock_init();
    }
}
import "./PullPaymentMockUpgradeable.sol";

contract PullPaymentMockUpgradeableWithInit is PullPaymentMockUpgradeable {
    constructor() payable initializer {
        __PullPaymentMock_init();
    }
}
import "./ReentrancyAttackUpgradeable.sol";

contract ReentrancyAttackUpgradeableWithInit is ReentrancyAttackUpgradeable {
    constructor() payable initializer {
        __ReentrancyAttack_init();
    }
}
import "./ReentrancyMockUpgradeable.sol";

contract ReentrancyMockUpgradeableWithInit is ReentrancyMockUpgradeable {
    constructor() payable initializer {
        __ReentrancyMock_init();
    }
}
import "./StorageSlotMockUpgradeable.sol";

contract StorageSlotMockUpgradeableWithInit is StorageSlotMockUpgradeable {
    constructor() payable initializer {
        __StorageSlotMock_init();
    }
}
import "./TimelockReentrantUpgradeable.sol";

contract TimelockReentrantUpgradeableWithInit is TimelockReentrantUpgradeable {
    constructor() payable initializer {
        __TimelockReentrant_init();
    }
}
import "./TimersBlockNumberImplUpgradeable.sol";

contract TimersBlockNumberImplUpgradeableWithInit is TimersBlockNumberImplUpgradeable {
    constructor() payable initializer {
        __TimersBlockNumberImpl_init();
    }
}
import "./TimersTimestampImplUpgradeable.sol";

contract TimersTimestampImplUpgradeableWithInit is TimersTimestampImplUpgradeable {
    constructor() payable initializer {
        __TimersTimestampImpl_init();
    }
}
import "./token/ERC1155ReceiverMockUpgradeable.sol";

contract ERC1155ReceiverMockUpgradeableWithInit is ERC1155ReceiverMockUpgradeable {
    constructor(bytes4 recRetval, bool recReverts, bytes4 batRetval, bool batReverts) payable initializer {
        __ERC1155ReceiverMock_init(recRetval, recReverts, batRetval, batReverts);
    }
}
import "./token/ERC20ExcessDecimalsMockUpgradeable.sol";

contract ERC20ExcessDecimalsMockUpgradeableWithInit is ERC20ExcessDecimalsMockUpgradeable {
    constructor() payable initializer {
        __ERC20ExcessDecimalsMock_init();
    }
}
import "./token/ERC721ConsecutiveEnumerableMockUpgradeable.sol";

contract ERC721ConsecutiveEnumerableMockUpgradeableWithInit is ERC721ConsecutiveEnumerableMockUpgradeable {
    constructor(
        string memory name,
        string memory symbol,
        address[] memory receivers,
        uint96[] memory amounts
    ) payable initializer {
        __ERC721ConsecutiveEnumerableMock_init(name, symbol, receivers, amounts);
    }
}
import "./token/ERC721ConsecutiveMockUpgradeable.sol";

contract ERC721ConsecutiveMockUpgradeableWithInit is ERC721ConsecutiveMockUpgradeable {
    constructor(
        string memory name,
        string memory symbol,
        address[] memory delegates,
        address[] memory receivers,
        uint96[] memory amounts
    ) payable initializer {
        __ERC721ConsecutiveMock_init(name, symbol, delegates, receivers, amounts);
    }
}
import "./token/ERC721ConsecutiveMockUpgradeable.sol";

contract ERC721ConsecutiveNoConstructorMintMockUpgradeableWithInit is ERC721ConsecutiveNoConstructorMintMockUpgradeable {
    constructor(string memory name, string memory symbol) payable initializer {
        __ERC721ConsecutiveNoConstructorMintMock_init(name, symbol);
    }
}
import "./token/ERC721ReceiverMockUpgradeable.sol";

contract ERC721ReceiverMockUpgradeableWithInit is ERC721ReceiverMockUpgradeable {
    constructor(bytes4 retval, Error error) payable initializer {
        __ERC721ReceiverMock_init(retval, error);
    }
}
import "./token/ERC777SenderRecipientMockUpgradeable.sol";

contract ERC777SenderRecipientMockUpgradeableWithInit is ERC777SenderRecipientMockUpgradeable {
    constructor() payable initializer {
        __ERC777SenderRecipientMock_init();
    }
}
import "./wizard/MyGovernor1Upgradeable.sol";

contract MyGovernor1UpgradeableWithInit is MyGovernor1Upgradeable {
    constructor(
        IVotesUpgradeable _token,
        TimelockControllerUpgradeable _timelock
    ) payable initializer {
        __MyGovernor1_init(_token, _timelock);
    }
}
import "./wizard/MyGovernor2Upgradeable.sol";

contract MyGovernor2UpgradeableWithInit is MyGovernor2Upgradeable {
    constructor(
        IVotesUpgradeable _token,
        TimelockControllerUpgradeable _timelock
    ) payable initializer {
        __MyGovernor2_init(_token, _timelock);
    }
}
import "./wizard/MyGovernor3Upgradeable.sol";

contract MyGovernor3UpgradeableWithInit is MyGovernor3Upgradeable {
    constructor(
        IVotesUpgradeable _token,
        TimelockControllerUpgradeable _timelock
    ) payable initializer {
        __MyGovernor3_init(_token, _timelock);
    }
}
import "../token/ERC1155/ERC1155Upgradeable.sol";

contract ERC1155UpgradeableWithInit is ERC1155Upgradeable {
    constructor(string memory uri_) payable initializer {
        __ERC1155_init(uri_);
    }
}
import "../token/ERC1155/presets/ERC1155PresetMinterPauserUpgradeable.sol";

contract ERC1155PresetMinterPauserUpgradeableWithInit is ERC1155PresetMinterPauserUpgradeable {
    constructor(string memory uri) payable initializer {
        __ERC1155PresetMinterPauser_init(uri);
    }
}
import "../token/ERC1155/utils/ERC1155HolderUpgradeable.sol";

contract ERC1155HolderUpgradeableWithInit is ERC1155HolderUpgradeable {
    constructor() payable initializer {
        __ERC1155Holder_init();
    }
}
import "../token/ERC20/ERC20Upgradeable.sol";

contract ERC20UpgradeableWithInit is ERC20Upgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __ERC20_init(name_, symbol_);
    }
}
import "../token/ERC20/presets/ERC20PresetFixedSupplyUpgradeable.sol";

contract ERC20PresetFixedSupplyUpgradeableWithInit is ERC20PresetFixedSupplyUpgradeable {
    constructor(string memory name, string memory symbol, uint256 initialSupply, address owner) payable initializer {
        __ERC20PresetFixedSupply_init(name, symbol, initialSupply, owner);
    }
}
import "../token/ERC20/presets/ERC20PresetMinterPauserUpgradeable.sol";

contract ERC20PresetMinterPauserUpgradeableWithInit is ERC20PresetMinterPauserUpgradeable {
    constructor(string memory name, string memory symbol) payable initializer {
        __ERC20PresetMinterPauser_init(name, symbol);
    }
}
import "../token/ERC20/utils/TokenTimelockUpgradeable.sol";

contract TokenTimelockUpgradeableWithInit is TokenTimelockUpgradeable {
    constructor(IERC20Upgradeable token_, address beneficiary_, uint256 releaseTime_) payable initializer {
        __TokenTimelock_init(token_, beneficiary_, releaseTime_);
    }
}
import "../token/ERC721/ERC721Upgradeable.sol";

contract ERC721UpgradeableWithInit is ERC721Upgradeable {
    constructor(string memory name_, string memory symbol_) payable initializer {
        __ERC721_init(name_, symbol_);
    }
}
import "../token/ERC721/presets/ERC721PresetMinterPauserAutoIdUpgradeable.sol";

contract ERC721PresetMinterPauserAutoIdUpgradeableWithInit is ERC721PresetMinterPauserAutoIdUpgradeable {
    constructor(string memory name, string memory symbol, string memory baseTokenURI) payable initializer {
        __ERC721PresetMinterPauserAutoId_init(name, symbol, baseTokenURI);
    }
}
import "../token/ERC721/utils/ERC721HolderUpgradeable.sol";

contract ERC721HolderUpgradeableWithInit is ERC721HolderUpgradeable {
    constructor() payable initializer {
        __ERC721Holder_init();
    }
}
import "../token/ERC777/ERC777Upgradeable.sol";

contract ERC777UpgradeableWithInit is ERC777Upgradeable {
    constructor(string memory name_, string memory symbol_, address[] memory defaultOperators_) payable initializer {
        __ERC777_init(name_, symbol_, defaultOperators_);
    }
}
import "../token/ERC777/presets/ERC777PresetFixedSupplyUpgradeable.sol";

contract ERC777PresetFixedSupplyUpgradeableWithInit is ERC777PresetFixedSupplyUpgradeable {
    constructor(
        string memory name,
        string memory symbol,
        address[] memory defaultOperators,
        uint256 initialSupply,
        address owner
    ) payable initializer {
        __ERC777PresetFixedSupply_init(name, symbol, defaultOperators, initialSupply, owner);
    }
}
import "../utils/escrow/EscrowUpgradeable.sol";

contract EscrowUpgradeableWithInit is EscrowUpgradeable {
    constructor() payable initializer {
        __Escrow_init();
    }
}
import "../utils/escrow/RefundEscrowUpgradeable.sol";

contract RefundEscrowUpgradeableWithInit is RefundEscrowUpgradeable {
    constructor(address payable beneficiary_) payable initializer {
        __RefundEscrow_init(beneficiary_);
    }
}
import "../utils/introspection/ERC1820ImplementerUpgradeable.sol";

contract ERC1820ImplementerUpgradeableWithInit is ERC1820ImplementerUpgradeable {
    constructor() payable initializer {
        __ERC1820Implementer_init();
    }
}
