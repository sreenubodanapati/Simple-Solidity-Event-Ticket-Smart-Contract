// Changing Owner Status and validating data using modifier
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract funModifier {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyowner() {
        require(msg.sender == owner, "now owner");
        _;
    }

    modifier validateData(address _addrs) {
        require(_addrs != address(0), "Not valid address");
        _;
    }

    function changeowner(address _newowner) public onlyowner validateData(_newowner) {
        owner = _newowner;
    }
}
