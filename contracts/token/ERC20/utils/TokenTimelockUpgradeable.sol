// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/utils/TokenTimelock.sol)

pragma solidity ^0.8.0;

import "./SafeERC20Upgradeable.sol";
import { TokenTimelockStorage } from "./TokenTimelockStorage.sol";
import "../../../proxy/utils/Initializable.sol";

/**
 * @dev A token holder contract that will allow a beneficiary to extract the
 * tokens after a given release time.
 *
 * Useful for simple vesting schedules like "advisors get all of their tokens
 * after 1 year".
 *
 * @custom:storage-size 53
 */
contract TokenTimelockUpgradeable is Initializable {
    using TokenTimelockStorage for TokenTimelockStorage.Layout;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /**
     * @dev Deploys a timelock instance that is able to hold the token specified, and will only release it to
     * `beneficiary_` when {release} is invoked after `releaseTime_`. The release time is specified as a Unix timestamp
     * (in seconds).
     */
    function __TokenTimelock_init(IERC20Upgradeable token_, address beneficiary_, uint256 releaseTime_) internal onlyInitializing {
        __TokenTimelock_init_unchained(token_, beneficiary_, releaseTime_);
    }

    function __TokenTimelock_init_unchained(IERC20Upgradeable token_, address beneficiary_, uint256 releaseTime_) internal onlyInitializing {
        require(releaseTime_ > block.timestamp, "TokenTimelock: release time is before current time");
        TokenTimelockStorage.layout()._token = token_;
        TokenTimelockStorage.layout()._beneficiary = beneficiary_;
        TokenTimelockStorage.layout()._releaseTime = releaseTime_;
    }

    /**
     * @dev Returns the token being held.
     */
    function token() public view virtual returns (IERC20Upgradeable) {
        return TokenTimelockStorage.layout()._token;
    }

    /**
     * @dev Returns the beneficiary that will receive the tokens.
     */
    function beneficiary() public view virtual returns (address) {
        return TokenTimelockStorage.layout()._beneficiary;
    }

    /**
     * @dev Returns the time when the tokens are released in seconds since Unix epoch (i.e. Unix timestamp).
     */
    function releaseTime() public view virtual returns (uint256) {
        return TokenTimelockStorage.layout()._releaseTime;
    }

    /**
     * @dev Transfers tokens held by the timelock to the beneficiary. Will only succeed if invoked after the release
     * time.
     */
    function release() public virtual {
        require(block.timestamp >= releaseTime(), "TokenTimelock: current time is before release time");

        uint256 amount = token().balanceOf(address(this));
        require(amount > 0, "TokenTimelock: no tokens to release");

        token().safeTransfer(beneficiary(), amount);
    }
}
