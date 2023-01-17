// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import { CallReceiverMockStorage } from "./CallReceiverMockStorage.sol";
import "../proxy/utils/Initializable.sol";

contract CallReceiverMockUpgradeable is Initializable {
    using CallReceiverMockStorage for CallReceiverMockStorage.Layout;
    function __CallReceiverMock_init() internal onlyInitializing {
    }

    function __CallReceiverMock_init_unchained() internal onlyInitializing {
    }

    event MockFunctionCalled();
    event MockFunctionCalledWithArgs(uint256 a, uint256 b);

    function mockFunction() public payable returns (string memory) {
        emit MockFunctionCalled();

        return "0x1234";
    }

    function mockFunctionWithArgs(uint256 a, uint256 b) public payable returns (string memory) {
        emit MockFunctionCalledWithArgs(a, b);

        return "0x1234";
    }

    function mockFunctionNonPayable() public returns (string memory) {
        emit MockFunctionCalled();

        return "0x1234";
    }

    function mockStaticFunction() public pure returns (string memory) {
        return "0x1234";
    }

    function mockFunctionRevertsNoReason() public payable {
        revert();
    }

    function mockFunctionRevertsReason() public payable {
        revert("CallReceiverMock: reverting");
    }

    function mockFunctionThrows() public payable {
        assert(false);
    }

    function mockFunctionOutOfGas() public payable {
        for (uint256 i = 0; ; ++i) {
            CallReceiverMockStorage.layout()._array.push(i);
        }
    }

    function mockFunctionWritesStorage() public returns (string memory) {
        CallReceiverMockStorage.layout().sharedAnswer = "42";
        return "0x1234";
    }
    // generated getter for ${varDecl.name}
    function sharedAnswer() public view returns(string memory) {
        return CallReceiverMockStorage.layout().sharedAnswer;
    }

}
