// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "./mocks/MockERC20.sol";

contract ContractTest is Test {
    MockERC20 public mockToken;

    function setUp() public {
        mockToken = new MockERC20();
    }

    function testExample(address _to) public {
        mockToken.name();
        bool success = mockToken.transfer(_to, 10e3);
        assertTrue(success);
    }
}
