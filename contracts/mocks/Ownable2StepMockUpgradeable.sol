// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../access/Ownable2StepUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

contract Ownable2StepMockUpgradeable is Initializable, Ownable2StepUpgradeable {    function __Ownable2StepMock_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable2StepMock_init_unchained() internal onlyInitializing {
    }
}
