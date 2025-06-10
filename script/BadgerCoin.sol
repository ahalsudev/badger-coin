// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {BadgerCoin} from "../src/BadgerCoin.sol";

contract BadgerCoinScript is Script {
    BadgerCoin public badgerCoin;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        badgerCoin = new BadgerCoin();

        vm.stopBroadcast();
    }
}
