// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {AggregatorV3Interface} from "@chainlink/contracts/v0.8/interfaces/AggregatorV3Interface.sol";

contract TokenSwap {
    address ETHUSDAddress = 0x694AA1769357215DE4FAC081bf1f309aDC325306;
    address LINKUSDAddress = 0xc59E3633BAAC79493d908e63626716e204A45EdF;
    address DIAUSD = 0x14866185B1962B63C3Ea9E03Bc1da838bab34C19;
    AggregatorV3Interface internal dataFeed;

    int public pairResult;

    function getChainlinkDataFeedLatestAnswer(
        address _pairAddress
    ) public returns (int) {
        dataFeed = AggregatorV3Interface(_pairAddress);

        // prettier-ignore
        (
            /* uint80 roundID */,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        pairResult = answer;
        return answer;
    }
}
