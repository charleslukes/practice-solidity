//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import * as AccountValidator from "./AccountValidator.sol";

contract MultiAccountValidators is AccountValidator.AccountValidator {
    mapping(address => bool) public owners;

    constructor(){
        owners[msg.sender] = true;
    }

    function validate(address ownersAddress) override public view returns (bool) {
        return owners[ownersAddress];
    }

    function addOwner(address newOwnerAddress) public {
        owners[newOwnerAddress] = true;
    }
}