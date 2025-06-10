// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BadgerCoin is ERC20 {
    constructor() ERC20("BadgerCoin", "Av1BG") {
        _mint(msg.sender, 1000000);
    }

    function decimals() public view virtual override returns (uint8) {
        return 3;
    }
}
