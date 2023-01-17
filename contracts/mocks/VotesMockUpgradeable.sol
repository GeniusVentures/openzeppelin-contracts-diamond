// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../governance/utils/VotesUpgradeable.sol";
import { VotesMockStorage } from "./VotesMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract VotesMockUpgradeable is Initializable, VotesUpgradeable {
    using VotesMockStorage for VotesMockStorage.Layout;

    function __VotesMock_init(string memory name) internal onlyInitializing {
        __EIP712_init_unchained(name, "1");
    }

    function __VotesMock_init_unchained(string memory) internal onlyInitializing {}

    function getTotalSupply() public view returns (uint256) {
        return _getTotalSupply();
    }

    function delegate(address account, address newDelegation) public {
        return _delegate(account, newDelegation);
    }

    function _getVotingUnits(address account) internal view override returns (uint256) {
        return VotesMockStorage.layout()._balances[account];
    }

    function mint(address account, uint256 voteId) external {
        VotesMockStorage.layout()._balances[account] += 1;
        VotesMockStorage.layout()._owners[voteId] = account;
        _transferVotingUnits(address(0), account, 1);
    }

    function burn(uint256 voteId) external {
        address owner = VotesMockStorage.layout()._owners[voteId];
        VotesMockStorage.layout()._balances[owner] -= 1;
        _transferVotingUnits(owner, address(0), 1);
    }

    function getChainId() external view returns (uint256) {
        return block.chainid;
    }
}
