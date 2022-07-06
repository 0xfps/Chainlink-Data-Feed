# 14 Chainlink-Data-Feed

---

Culled from https://cryptomarketpool.com/getting-started-with-solidity/#block-ceb01da9-9848-47a1-8dcf-85f8459b0639.

##

Chainlink data feeds are the fastest way to connect a smart contract to real time market data. These feeds allow you to easily capture the latest market price in one function call.

There are many use cases when real time data is needed for contract evaluation. For example: lending and borrowing to determine collateral or real time pricing for synthetic contracts.

This contract uses the `AggregatorV3Interface` in the Chainlink Oracle to get the USD ($) prices of:
- [x] ETH
- [x] BNB
- [x] BTC
- [x] ATOM
- [x] DAI
