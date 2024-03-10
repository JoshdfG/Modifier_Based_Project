// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract MessageSetter {
    string public message;
    address public owner;

    modifier onlyOwner() {
        require(owner == msg.sender, "Only the owner can cal this function");
        _;
    }

    constructor(string memory initialMessage) {
        owner = msg.sender;
        message = initialMessage;
    }

    function setAMessage(string memory newMessage) public onlyOwner {
        message = newMessage;
    }

    function getTheMessage() public view onlyOwner returns (string memory) {
        return message;
    }
}
