// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import { DummyImplementationStorage } from "./DummyImplementationStorage.sol";
import "../proxy/utils/Initializable.sol";

abstract contract ImplUpgradeable is Initializable {
    function __Impl_init() internal onlyInitializing {
        __Impl_init_unchained();
    }

    function __Impl_init_unchained() internal onlyInitializing {
    }
    function version() public pure virtual returns (string memory);
}

contract DummyImplementationUpgradeable is Initializable {
    using DummyImplementationStorage for DummyImplementationStorage.Layout;
    function __DummyImplementation_init() internal onlyInitializing {
        __DummyImplementation_init_unchained();
    }

    function __DummyImplementation_init_unchained() internal onlyInitializing {
    }

    function initializeNonPayable() public {
        DummyImplementationStorage.layout().value = 10;
    }

    function initializePayable() public payable {
        DummyImplementationStorage.layout().value = 100;
    }

    function initializeNonPayableWithValue(uint256 _value) public {
        DummyImplementationStorage.layout().value = _value;
    }

    function initializePayableWithValue(uint256 _value) public payable {
        DummyImplementationStorage.layout().value = _value;
    }

    function initialize(
        uint256 _value,
        string memory _text,
        uint256[] memory _values
    ) public {
        DummyImplementationStorage.layout().value = _value;
        DummyImplementationStorage.layout().text = _text;
        DummyImplementationStorage.layout().values = _values;
    }

    function get() public pure returns (bool) {
        return true;
    }

    function version() public pure virtual returns (string memory) {
        return "V1";
    }

    function reverts() public pure {
        require(false, "DummyImplementation reverted");
    }
    // generated getter for ${varDecl.name}
    function value() public view returns(uint256) {
        return DummyImplementationStorage.layout().value;
    }

    // generated getter for ${varDecl.name}
    function text() public view returns(string memory) {
        return DummyImplementationStorage.layout().text;
    }

    // generated getter for ${varDecl.name}
    function values(uint256 arg0) public view returns(uint256) {
        return DummyImplementationStorage.layout().values[arg0];
    }

}

contract DummyImplementationV2Upgradeable is Initializable, DummyImplementationUpgradeable {
    using DummyImplementationStorage for DummyImplementationStorage.Layout;
    function __DummyImplementationV2_init() internal onlyInitializing {
        __DummyImplementation_init_unchained();
        __DummyImplementationV2_init_unchained();
    }

    function __DummyImplementationV2_init_unchained() internal onlyInitializing {
    }
    function migrate(uint256 newVal) public payable {
        DummyImplementationStorage.layout().value = newVal;
    }

    function version() public pure override returns (string memory) {
        return "V2";
    }
}
