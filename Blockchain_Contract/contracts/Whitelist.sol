//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist{
    uint8 public maxWhitelistedAddress;

    mapping(address => bool) public whitelistedAdresses;

    uint8 public numAddressesWhitelisted;

    constructor (uint8 _maxwhitelistedAddress){
        maxWhitelistedAddress = _maxwhitelistedAddress;
    }

    function addToWhitelist() public{
        require(!whitelistedAdresses[msg.sender],"Sender already been whitelisted!");
        require(numAddressesWhitelisted < maxWhitelistedAddress, "Limite reached");
        whitelistedAdresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}