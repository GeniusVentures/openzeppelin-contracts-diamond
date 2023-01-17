// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../governance/extensions/GovernorPreventLateQuorumUpgradeable.sol";
import "../governance/extensions/GovernorSettingsUpgradeable.sol";
import "../governance/extensions/GovernorCountingSimpleUpgradeable.sol";
import "../governance/extensions/GovernorVotesUpgradeable.sol";
import { GovernorPreventLateQuorumMockStorage } from "./GovernorPreventLateQuorumMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract GovernorPreventLateQuorumMockUpgradeable is
    Initializable, GovernorSettingsUpgradeable,
    GovernorVotesUpgradeable,
    GovernorCountingSimpleUpgradeable,
    GovernorPreventLateQuorumUpgradeable
{
    using GovernorPreventLateQuorumMockStorage for GovernorPreventLateQuorumMockStorage.Layout;

    function __GovernorPreventLateQuorumMock_init(
        string memory name_,
        IVotesUpgradeable token_,
        uint256 votingDelay_,
        uint256 votingPeriod_,
        uint256 quorum_,
        uint64 voteExtension_
    ) internal onlyInitializing {
        __EIP712_init_unchained(name_, version());
        __Governor_init_unchained(name_);
        __GovernorSettings_init_unchained(votingDelay_, votingPeriod_, 0);
        __GovernorVotes_init_unchained(token_);
        __GovernorPreventLateQuorum_init_unchained(voteExtension_);
        __GovernorPreventLateQuorumMock_init_unchained(name_, token_, votingDelay_, votingPeriod_, quorum_, voteExtension_);
    }

    function __GovernorPreventLateQuorumMock_init_unchained(
        string memory,
        IVotesUpgradeable,
        uint256,
        uint256,
        uint256 quorum_,
        uint64
    ) internal onlyInitializing {
        GovernorPreventLateQuorumMockStorage.layout()._quorum = quorum_;
    }

    function quorum(uint256) public view override returns (uint256) {
        return GovernorPreventLateQuorumMockStorage.layout()._quorum;
    }

    function proposalDeadline(uint256 proposalId)
        public
        view
        override(GovernorUpgradeable, GovernorPreventLateQuorumUpgradeable)
        returns (uint256)
    {
        return super.proposalDeadline(proposalId);
    }

    function proposalThreshold() public view override(GovernorUpgradeable, GovernorSettingsUpgradeable) returns (uint256) {
        return super.proposalThreshold();
    }

    function _castVote(
        uint256 proposalId,
        address account,
        uint8 support,
        string memory reason,
        bytes memory params
    ) internal override(GovernorUpgradeable, GovernorPreventLateQuorumUpgradeable) returns (uint256) {
        return super._castVote(proposalId, account, support, reason, params);
    }
}
