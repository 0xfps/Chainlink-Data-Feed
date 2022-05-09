// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;
import "https://github.com/smartcontractkit/chainlink-brownie-contracts/blob/main/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

/*
* @title: 
* @author: Anthony (fps) https://github.com/fps8k .
* @dev: 
*/
contract Price
{
    /*
    * @dev:
    *
    * Initialize the aggregator interface for price fetchs.
    */

    AggregatorV3Interface private price_feed;                       // Price feed.
    AggregatorV3Interface private ETH;                              // ETH TO USD.
    AggregatorV3Interface private BNB;                              // BNB TO USD.
    AggregatorV3Interface private BTC;                              // BTC TO USD.
    AggregatorV3Interface private ATOM;                             // ATOM TO USD.
    AggregatorV3Interface private DAI;                              // DAI TO USD.
    

    constructor() public
    {
        ETH = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        BNB = AggregatorV3Interface(0xcf0f51ca2cDAecb464eeE4227f5295F2384F84ED);
        BTC = AggregatorV3Interface(0xECe365B379E1dD183B20fc5f022230C044d51404);
        ATOM = AggregatorV3Interface(0x3539F2E214d8BC7E611056383323aC6D1b01943c);
        DAI = AggregatorV3Interface(0x2bA49Aaa16E6afD2a993473cfB70Fa8559B523cF);
    }




    /*
    * @dev:
    *
    * Returns the version of the price feed.
    */

    function getVersion() public view returns(uint256)
    {
        return price_feed.version();
    }




    /*
    * @dev:
    *
    * Returns the price of ETH to USD.
    */

    function getETHPrice() public view returns(int256)
    {
        (, int256 price, , ,) = ETH.latestRoundData();

        return price;
    }




    /*
    * @dev:
    *
    * Returns the price of BNB to USD.
    */

    function getBNBPrice() public view returns(int256)
    {
        (, int256 price, , ,) = BNB.latestRoundData();

        return price;
    }




    /*
    * @dev:
    *
    * Returns the price of BTC to USD.
    */

    function getBTCPrice() public view returns(int256)
    {
        (, int256 price, , ,) = BTC.latestRoundData();

        return price;
    }




    /*
    * @dev:
    *
    * Returns the price of ATOM to USD.
    */

    function getATOMPrice() public view returns(int256)
    {
        (, int256 price, , ,) = ATOM.latestRoundData();

        return price;
    }




    /*
    * @dev:
    *
    * Returns the price of DAI to USD.
    */

    function getDAIPrice() public view returns(int256)
    {
        (, int256 price, , ,) = DAI.latestRoundData();

        return price;
    }
}