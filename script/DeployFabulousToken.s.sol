//SPDX-License-Identifier: MIT
pragma solidity ^0.8.37;

import "forge-std/Script.sol";
import "../src/FabulousToken.sol";

contract DeployFabulousToken is Script {
    function run() external {
        vm.startBroadcast();
        new FabulousToken(
            "Fabulous Token",
            "FAB",
            1_000_000
        );
        vm.stopBroadcast();
    }
}