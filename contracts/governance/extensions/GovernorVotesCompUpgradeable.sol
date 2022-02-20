// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (governance/extensions/GovernorVotesComp.sol)

pragma solidity ^0.8.0;

import "../GovernorUpgradeable.sol";
import "../../token/ERC20/extensions/ERC20VotesCompUpgradeable.sol";
import { GovernorVotesCompStorage } from "./GovernorVotesCompStorage.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Extension of {Governor} for voting weight extraction from a Comp token.
 *
 * _Available since v4.3._
 */
abstract contract GovernorVotesCompUpgradeable is Initializable, GovernorUpgradeable {
    using GovernorVotesCompStorage for GovernorVotesCompStorage.Layout;

    function __GovernorVotesComp_init(ERC20VotesCompUpgradeable token_) internal onlyInitializing {
        __Context_init_unchained();
        __ERC165_init_unchained();
        __IGovernor_init_unchained();
        __GovernorVotesComp_init_unchained(token_);
    }

    function __GovernorVotesComp_init_unchained(ERC20VotesCompUpgradeable token_) internal onlyInitializing {
        GovernorVotesCompStorage.layout().token = token_;
    }

    /**
     * Read the voting weight from the token's built in snapshot mechanism (see {IGovernor-getVotes}).
     */
    function getVotes(address account, uint256 blockNumber) public view virtual override returns (uint256) {
        return GovernorVotesCompStorage.layout().token.getPriorVotes(account, blockNumber);
    }
    // generated getter for ${varDecl.name}
    function token() public view returns(ERC20VotesCompUpgradeable) {
        return GovernorVotesCompStorage.layout().token;
    }

}
