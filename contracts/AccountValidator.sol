//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract AccountValidator {
address public owner; 
    
    constructor(){
        owner = msg.sender;
    }
    
    function validate(address addr) virtual public view returns (bool) {
        return addr == owner;
    }
    
    function setOwner(address owner_) public {
        if(msg.sender == owner){
            owner = owner_;
        }
    }
}