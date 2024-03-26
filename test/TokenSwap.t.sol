// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {TokenSwap} from "../src/TokenSwap.sol";

contract CounterTest is Test {
    TokenSwap public tokenSwap;

    address ETHUSDAddress = 0x694AA1769357215DE4FAC081bf1f309aDC325306;
    address LINKUSDAddress = 0xc59E3633BAAC79493d908e63626716e204A45EdF;
    address DIAUSD = 0x14866185B1962B63C3Ea9E03Bc1da838bab34C19;

    function setUp() public {
        tokenSwap = new TokenSwap();
    }

    function testChainLinkPriceFeed() public {
        int result = tokenSwap.getChainlinkDataFeedLatestAnswer(ETHUSDAddress);
        console2.log(result);
        assertGt(result, 1);
    }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
