//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Lottery {
    address owner;
    address[] players;

    constructor(){
        owner = msg.sender;
    }
}