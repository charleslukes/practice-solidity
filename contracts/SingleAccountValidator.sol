//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import * as AccountValidator from "./AccountValidator.sol";

contract SingleAccountValidator is AccountValidator.AccountValidator {
    constructor(){
        owner = msg.sender;
    }
    
    function validate(address validatorAddress) override public view returns(bool) {
        return validatorAddress == msg.sender;
    }

    function setValidator(address newValidator) public {
        if(msg.sender == owner){
            owner = newValidator;
        }
    }
}