// SPDX-License-Identifier: MIT
// This file was procedurally generated from scripts/generate/templates/CheckpointsMock.js.

pragma solidity ^0.8.0;

import "../utils/CheckpointsUpgradeable.sol";
import { CheckpointsMockStorage, Checkpoints224MockStorage, Checkpoints160MockStorage } from "./CheckpointsMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract CheckpointsMockUpgradeable is Initializable {
    using CheckpointsMockStorage for CheckpointsMockStorage.Layout;
    function __CheckpointsMock_init() internal onlyInitializing {
    }

    function __CheckpointsMock_init_unchained() internal onlyInitializing {
    }
    using CheckpointsUpgradeable for CheckpointsUpgradeable.History;

    function latest() public view returns (uint256) {
        return CheckpointsMockStorage.layout()._totalCheckpoints.latest();
    }

    function latestCheckpoint()
        public
        view
        returns (
            bool,
            uint256,
            uint256
        )
    {
        return CheckpointsMockStorage.layout()._totalCheckpoints.latestCheckpoint();
    }

    function length() public view returns (uint256) {
        return CheckpointsMockStorage.layout()._totalCheckpoints.length();
    }

    function push(uint256 value) public returns (uint256, uint256) {
        return CheckpointsMockStorage.layout()._totalCheckpoints.push(value);
    }

    function getAtBlock(uint256 blockNumber) public view returns (uint256) {
        return CheckpointsMockStorage.layout()._totalCheckpoints.getAtBlock(blockNumber);
    }

    function getAtProbablyRecentBlock(uint256 blockNumber) public view returns (uint256) {
        return CheckpointsMockStorage.layout()._totalCheckpoints.getAtProbablyRecentBlock(blockNumber);
    }
}

contract Checkpoints224MockUpgradeable is Initializable {
    using Checkpoints224MockStorage for Checkpoints224MockStorage.Layout;
    function __Checkpoints224Mock_init() internal onlyInitializing {
    }

    function __Checkpoints224Mock_init_unchained() internal onlyInitializing {
    }
    using CheckpointsUpgradeable for CheckpointsUpgradeable.Trace224;

    function latest() public view returns (uint224) {
        return Checkpoints224MockStorage.layout()._totalCheckpoints.latest();
    }

    function latestCheckpoint()
        public
        view
        returns (
            bool,
            uint32,
            uint224
        )
    {
        return Checkpoints224MockStorage.layout()._totalCheckpoints.latestCheckpoint();
    }

    function length() public view returns (uint256) {
        return Checkpoints224MockStorage.layout()._totalCheckpoints.length();
    }

    function push(uint32 key, uint224 value) public returns (uint224, uint224) {
        return Checkpoints224MockStorage.layout()._totalCheckpoints.push(key, value);
    }

    function lowerLookup(uint32 key) public view returns (uint224) {
        return Checkpoints224MockStorage.layout()._totalCheckpoints.lowerLookup(key);
    }

    function upperLookup(uint32 key) public view returns (uint224) {
        return Checkpoints224MockStorage.layout()._totalCheckpoints.upperLookup(key);
    }
}

contract Checkpoints160MockUpgradeable is Initializable {
    using Checkpoints160MockStorage for Checkpoints160MockStorage.Layout;
    function __Checkpoints160Mock_init() internal onlyInitializing {
    }

    function __Checkpoints160Mock_init_unchained() internal onlyInitializing {
    }
    using CheckpointsUpgradeable for CheckpointsUpgradeable.Trace160;

    function latest() public view returns (uint160) {
        return Checkpoints160MockStorage.layout()._totalCheckpoints.latest();
    }

    function latestCheckpoint()
        public
        view
        returns (
            bool,
            uint96,
            uint160
        )
    {
        return Checkpoints160MockStorage.layout()._totalCheckpoints.latestCheckpoint();
    }

    function length() public view returns (uint256) {
        return Checkpoints160MockStorage.layout()._totalCheckpoints.length();
    }

    function push(uint96 key, uint160 value) public returns (uint160, uint160) {
        return Checkpoints160MockStorage.layout()._totalCheckpoints.push(key, value);
    }

    function lowerLookup(uint96 key) public view returns (uint160) {
        return Checkpoints160MockStorage.layout()._totalCheckpoints.lowerLookup(key);
    }

    function upperLookup(uint96 key) public view returns (uint160) {
        return Checkpoints160MockStorage.layout()._totalCheckpoints.upperLookup(key);
    }
}
