// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

contract ReentrancyAttackUpgradeable is Initializable, ContextUpgradeable {
    function __ReentrancyAttack_init() internal onlyInitializing {
    }

    function __ReentrancyAttack_init_unchained() internal onlyInitializing {
    }
    function callSender(bytes4 data) public {
        (bool success, ) = _msgSender().call(abi.encodeWithSelector(data));
        require(success, "ReentrancyAttack: failed call");
    }
}
