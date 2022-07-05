pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    constructor() ERC20("MOCKtoken", "MERC") {
        _mint(msg.sender, 1000e18);
    }
}
