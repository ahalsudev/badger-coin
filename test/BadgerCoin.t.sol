// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {BadgerCoin} from "../src/BadgerCoin.sol";

contract BadgerCoinTest is Test {
    BadgerCoin public badgerCoin;

    function setUp() public {
        badgerCoin = new BadgerCoin();
    }

    function test_ReadTotalSupply() public view {
        assertEq(badgerCoin.totalSupply(), 1000000);
    }
}
