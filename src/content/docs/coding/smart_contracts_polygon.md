# Steps to Deploy a Smart Contract on Polygon

<https://www.youtube.com/watch?v=Hrkp0krNdIM>

## MetaMask

1) [metamask.io](https://metamask.io/)

<https://pad.riseup.net/p/primer-smart-contract-polygon>
<https://chainlist.org/?testnets=true>
<https://mumbaifaucet.com/>
<https://remix.ethereum.org> (hello world, datafeeds)
<https://data.chain.link/ethereum/mainnet/crypto-usd/btc-usd>

## Contracts

```sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract HelloWorld {
    string public message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function updateMessage(string memory newMessage) public {
        message = newMessage;
    }
}
```

```sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract DataConsumerV3 {
    AggregatorV3Interface internal dataFeed;

    /**
     * Network: Mumbai
     * Aggregator: BTC/USD
     * Address: 0x007A22900a3B98143368Bd5906f8E17e9867581b
     */
    constructor() {
        dataFeed = AggregatorV3Interface(
            0x007A22900a3B98143368Bd5906f8E17e9867581b
        );
    }

    /**
     * Returns the latest answer.
     */
    function getChainlinkDataFeedLatestAnswer() public view returns (int) {
        // prettier-ignore
        (
            /* uint80 roundID */,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        return answer;
    }
}
```
