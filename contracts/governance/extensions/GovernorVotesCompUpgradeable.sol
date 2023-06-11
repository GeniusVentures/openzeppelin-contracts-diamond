// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (governance/extensions/GovernorVotesComp.sol)

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
     * @dev Clock (as specified in EIP-6372) is set to match the token's clock. Fallback to block numbers if the token
     * does not implement EIP-6372.
     */
    function clock() public view virtual override returns (uint48) {
        try GovernorVotesCompStorage.layout().token.clock() returns (uint48 timepoint) {
            return timepoint;
        } catch {
            return SafeCastUpgradeable.toUint48(block.number);
        }
    }

    /**
     * @dev Machine-readable description of the clock as specified in EIP-6372.
     */
    // solhint-disable-next-line func-name-mixedcase
    function CLOCK_MODE() public view virtual override returns (string memory) {
        try GovernorVotesCompStorage.layout().token.CLOCK_MODE() returns (string memory clockmode) {
            return clockmode;
        } catch {
            return "mode=blocknumber&from=default";
        }
    }

    /**
     * Read the voting weight from the token's built-in snapshot mechanism (see {Governor-_getVotes}).
     */
    function _getVotes(
        address account,
        uint256 timepoint,
        bytes memory /*params*/
    ) internal view virtual override returns (uint256) {
        return GovernorVotesCompStorage.layout().token.getPriorVotes(account, timepoint);
    }
    // generated getter for token
    function token() public view returns(ERC20VotesCompUpgradeable) {
        return GovernorVotesCompStorage.layout().token;
    }

}
