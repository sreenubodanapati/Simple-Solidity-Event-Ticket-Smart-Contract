// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventTicker {
    uint256 public numberofTick;
    uint256 public tickerPrice;
    uint256 public totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    string public message = "Buy your first event ticket";

    constructor(uint256 _ticketPrice) {
        tickerPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt) / 60 / 60 / 24;
    }

    function butTicket(uint256 _price) public returns (uint256 ticktId) {
        numberofTick++;
        totalAmount += _price;
        ticktId = numberofTick;
    }

    function totalamnt() public view returns (uint256) {
        return totalAmount;
    }
}
