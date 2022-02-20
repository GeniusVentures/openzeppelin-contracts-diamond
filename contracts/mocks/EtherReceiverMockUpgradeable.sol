// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import { EtherReceiverMockStorage } from "./EtherReceiverMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract EtherReceiverMockUpgradeable is Initializable {
    using EtherReceiverMockStorage for EtherReceiverMockStorage.Layout;
    function __EtherReceiverMock_init() internal onlyInitializing {
        __EtherReceiverMock_init_unchained();
    }

    function __EtherReceiverMock_init_unchained() internal onlyInitializing {
    }

    function setAcceptEther(bool acceptEther) public {
        EtherReceiverMockStorage.layout()._acceptEther = acceptEther;
    }

    receive() external payable {
        if (!EtherReceiverMockStorage.layout()._acceptEther) {
            revert();
        }
    }
}
