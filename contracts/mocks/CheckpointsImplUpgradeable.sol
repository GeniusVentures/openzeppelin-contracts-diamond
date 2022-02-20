// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/CheckpointsUpgradeable.sol";
import { CheckpointsImplStorage } from "./CheckpointsImplStorage.sol";
import "../proxy/utils/Initializable.sol";

contract CheckpointsImplUpgradeable is Initializable {
    using CheckpointsImplStorage for CheckpointsImplStorage.Layout;
    function __CheckpointsImpl_init() internal onlyInitializing {
        __CheckpointsImpl_init_unchained();
    }

    function __CheckpointsImpl_init_unchained() internal onlyInitializing {
    }
    using CheckpointsUpgradeable for CheckpointsUpgradeable.History;

    function latest() public view returns (uint256) {
        return CheckpointsImplStorage.layout()._totalCheckpoints.latest();
    }

    function getAtBlock(uint256 blockNumber) public view returns (uint256) {
        return CheckpointsImplStorage.layout()._totalCheckpoints.getAtBlock(blockNumber);
    }

    function push(uint256 value) public returns (uint256, uint256) {
        return CheckpointsImplStorage.layout()._totalCheckpoints.push(value);
    }
}
