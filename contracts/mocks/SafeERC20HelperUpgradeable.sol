// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../token/ERC20/IERC20Upgradeable.sol";
import "../token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import "../token/ERC20/utils/SafeERC20Upgradeable.sol";
import { ERC20ReturnFalseMockStorage, ERC20ReturnTrueMockStorage, ERC20NoReturnMockStorage, SafeERC20WrapperStorage } from "./SafeERC20HelperStorage.sol";
import "../proxy/utils/Initializable.sol";

contract ERC20ReturnFalseMockUpgradeable is Initializable, ContextUpgradeable {
    using ERC20ReturnFalseMockStorage for ERC20ReturnFalseMockStorage.Layout;
    function __ERC20ReturnFalseMock_init() internal onlyInitializing {
    }

    function __ERC20ReturnFalseMock_init_unchained() internal onlyInitializing {
    }

    function transfer(address, uint256) public returns (bool) {
        ERC20ReturnFalseMockStorage.layout()._dummy = 0;
        return false;
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public returns (bool) {
        ERC20ReturnFalseMockStorage.layout()._dummy = 0;
        return false;
    }

    function approve(address, uint256) public returns (bool) {
        ERC20ReturnFalseMockStorage.layout()._dummy = 0;
        return false;
    }

    function allowance(address, address) public view returns (uint256) {
        require(ERC20ReturnFalseMockStorage.layout()._dummy == 0); // Dummy read from a state variable so that the function is view
        return 0;
    }
}

contract ERC20ReturnTrueMockUpgradeable is Initializable, ContextUpgradeable {
    using ERC20ReturnTrueMockStorage for ERC20ReturnTrueMockStorage.Layout;
    function __ERC20ReturnTrueMock_init() internal onlyInitializing {
    }

    function __ERC20ReturnTrueMock_init_unchained() internal onlyInitializing {
    }

    function transfer(address, uint256) public returns (bool) {
        ERC20ReturnTrueMockStorage.layout()._dummy = 0;
        return true;
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public returns (bool) {
        ERC20ReturnTrueMockStorage.layout()._dummy = 0;
        return true;
    }

    function approve(address, uint256) public returns (bool) {
        ERC20ReturnTrueMockStorage.layout()._dummy = 0;
        return true;
    }

    function setAllowance(uint256 allowance_) public {
        ERC20ReturnTrueMockStorage.layout()._allowances[_msgSender()] = allowance_;
    }

    function allowance(address owner, address) public view returns (uint256) {
        return ERC20ReturnTrueMockStorage.layout()._allowances[owner];
    }
}

contract ERC20NoReturnMockUpgradeable is Initializable, ContextUpgradeable {
    using ERC20NoReturnMockStorage for ERC20NoReturnMockStorage.Layout;
    function __ERC20NoReturnMock_init() internal onlyInitializing {
    }

    function __ERC20NoReturnMock_init_unchained() internal onlyInitializing {
    }

    function transfer(address, uint256) public {
        ERC20NoReturnMockStorage.layout()._dummy = 0;
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public {
        ERC20NoReturnMockStorage.layout()._dummy = 0;
    }

    function approve(address, uint256) public {
        ERC20NoReturnMockStorage.layout()._dummy = 0;
    }

    function setAllowance(uint256 allowance_) public {
        ERC20NoReturnMockStorage.layout()._allowances[_msgSender()] = allowance_;
    }

    function allowance(address owner, address) public view returns (uint256) {
        return ERC20NoReturnMockStorage.layout()._allowances[owner];
    }
}

contract ERC20PermitNoRevertMockUpgradeable is
    Initializable, ERC20Upgradeable,
    ERC20PermitUpgradeable
{
    function __ERC20PermitNoRevertMock_init() internal onlyInitializing {
        __ERC20_init_unchained("ERC20PermitNoRevertMock", "ERC20PermitNoRevertMock");
        __EIP712_init_unchained("ERC20PermitNoRevertMock", "1");
        __ERC20Permit_init_unchained("ERC20PermitNoRevertMock");
    }

    function __ERC20PermitNoRevertMock_init_unchained() internal onlyInitializing {
    }
    function getChainId() external view returns (uint256) {
        return block.chainid;
    }

    function permitThatMayRevert(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public {
        super.permit(owner, spender, value, deadline, v, r, s);
    }

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public override {
        try this.permitThatMayRevert(owner, spender, value, deadline, v, r, s) {
            // do nothing
        } catch {
            // do nothing
        }
    }
}

contract SafeERC20WrapperUpgradeable is Initializable, ContextUpgradeable {
    using SafeERC20WrapperStorage for SafeERC20WrapperStorage.Layout;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    function __SafeERC20Wrapper_init(IERC20Upgradeable token) internal onlyInitializing {
        __SafeERC20Wrapper_init_unchained(token);
    }

    function __SafeERC20Wrapper_init_unchained(IERC20Upgradeable token) internal onlyInitializing {
        SafeERC20WrapperStorage.layout()._token = token;
    }

    function transfer() public {
        SafeERC20WrapperStorage.layout()._token.safeTransfer(address(0), 0);
    }

    function transferFrom() public {
        SafeERC20WrapperStorage.layout()._token.safeTransferFrom(address(0), address(0), 0);
    }

    function approve(uint256 amount) public {
        SafeERC20WrapperStorage.layout()._token.safeApprove(address(0), amount);
    }

    function increaseAllowance(uint256 amount) public {
        SafeERC20WrapperStorage.layout()._token.safeIncreaseAllowance(address(0), amount);
    }

    function decreaseAllowance(uint256 amount) public {
        SafeERC20WrapperStorage.layout()._token.safeDecreaseAllowance(address(0), amount);
    }

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public {
        SafeERC20Upgradeable.safePermit(IERC20PermitUpgradeable(address(SafeERC20WrapperStorage.layout()._token)), owner, spender, value, deadline, v, r, s);
    }

    function setAllowance(uint256 allowance_) public {
        ERC20ReturnTrueMockUpgradeable(address(SafeERC20WrapperStorage.layout()._token)).setAllowance(allowance_);
    }

    function allowance() public view returns (uint256) {
        return SafeERC20WrapperStorage.layout()._token.allowance(address(0), address(0));
    }
}
