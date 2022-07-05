// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Loaner {
    IERC20 token;

    constructor(IERC20 _token) {
        token = _token;
    }

    // on  reciveing ether send token
    function issue() public payable {
        require(msg.value > 0, "insufficient funds recieved");
        token.transfer(msg.sender, 10000000);
    }
}
