// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (governance/extensions/GovernorVotes.sol)

pragma solidity ^0.8.0;

import "../GovernorUpgradeable.sol";
import "../../interfaces/IERC5805Upgradeable.sol";
import { GovernorVotesStorage } from "./GovernorVotesStorage.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Extension of {Governor} for voting weight extraction from an {ERC20Votes} token, or since v4.5 an {ERC721Votes} token.
 *
 * _Available since v4.3._
 *
 * @custom:storage-size 51
 */
abstract contract GovernorVotesUpgradeable is Initializable, GovernorUpgradeable {
    using GovernorVotesStorage for GovernorVotesStorage.Layout;

    function __GovernorVotes_init(IVotesUpgradeable tokenAddress) internal onlyInitializing {
        __GovernorVotes_init_unchained(tokenAddress);
    }

    function __GovernorVotes_init_unchained(IVotesUpgradeable tokenAddress) internal onlyInitializing {
        GovernorVotesStorage.layout().token = IERC5805Upgradeable(address(tokenAddress));
    }

    /**
     * @dev Clock (as specified in EIP-6372) is set to match the token's clock. Fallback to block numbers if the token
     * does not implement EIP-6372.
     */
    function clock() public view virtual override returns (uint48) {
        try GovernorVotesStorage.layout().token.clock() returns (uint48 timepoint) {
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
        try GovernorVotesStorage.layout().token.CLOCK_MODE() returns (string memory clockmode) {
            return clockmode;
        } catch {
            return "mode=blocknumber&from=default";
        }
    }

    /**
     * Read the voting weight from the token's built in snapshot mechanism (see {Governor-_getVotes}).
     */
    function _getVotes(
        address account,
        uint256 timepoint,
        bytes memory /*params*/
    ) internal view virtual override returns (uint256) {
        return GovernorVotesStorage.layout().token.getPastVotes(account, timepoint);
    }
    // generated getter for token
    function token() public view returns(IERC5805Upgradeable) {
        return GovernorVotesStorage.layout().token;
    }

}
