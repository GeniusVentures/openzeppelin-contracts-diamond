// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (governance/extensions/GovernorVotesComp.sol)

pragma solidity ^0.8.0;

import "../GovernorUpgradeable.sol";
import "../../token/ERC20/extensions/ERC20VotesCompUpgradeable.sol";
import { GovernorVotesCompStorage } from "./GovernorVotesCompStorage.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Extension of {Governor} for voting weight extraction from a Comp token.
 *
 * _Available since v4.3._
 *
 * @custom:storage-size 51
 */
abstract contract GovernorVotesCompUpgradeable is Initializable, GovernorUpgradeable {
    using GovernorVotesCompStorage for GovernorVotesCompStorage.Layout;

    function __GovernorVotesComp_init(ERC20VotesCompUpgradeable token_) internal onlyInitializing {
        __GovernorVotesComp_init_unchained(token_);
    }

    function __GovernorVotesComp_init_unchained(ERC20VotesCompUpgradeable token_) internal onlyInitializing {
        GovernorVotesCompStorage.layout().token = token_;
    }

    /**
     * Read the voting weight from the token's built in snapshot mechanism (see {Governor-_getVotes}).
     */
    function _getVotes(
        address account,
        uint256 blockNumber,
        bytes memory /*params*/
    ) internal view virtual override returns (uint256) {
        return GovernorVotesCompStorage.layout().token.getPriorVotes(account, blockNumber);
    }
    // generated getter for ${varDecl.name}
    function token() public view returns(ERC20VotesCompUpgradeable) {
        return GovernorVotesCompStorage.layout().token;
    }

}
