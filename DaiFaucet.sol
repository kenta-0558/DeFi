// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


interface DaiToken {
    function transfer(address dst, uint wad) external returns (bool);
    function balanceOf(address guy) external view returns (uint);
}


contract owned {
    DaiToken daiToken;
    address owner;

    constructor() {
        owner = msg.sender;
        daiToken = DaiToken(0x4F96Fe3b7A6Cf9725f59d353F723c1bDb64CA6Aa);
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "You are not owner of this contract, so you can not call this function");
        _;
    }
}


contract mortal is owned {
    function destroy() public onlyOwner {
        daiToken.transfer(owner, daiToken.balanceOf(address(this)));
        // selfdestruct(msg.sender);
    }    
}
