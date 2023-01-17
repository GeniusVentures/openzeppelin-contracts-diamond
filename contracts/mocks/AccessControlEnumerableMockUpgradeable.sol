// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../access/AccessControlEnumerableUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

contract AccessControlEnumerableMockUpgradeable is Initializable, AccessControlEnumerableUpgradeable {
    function __AccessControlEnumerableMock_init() internal onlyInitializing {
        __AccessControlEnumerableMock_init_unchained();
    }

    function __AccessControlEnumerableMock_init_unchained() internal onlyInitializing {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function setRoleAdmin(bytes32 roleId, bytes32 adminRoleId) public {
        _setRoleAdmin(roleId, adminRoleId);
    }

    function senderProtected(bytes32 roleId) public onlyRole(roleId) {}
}
