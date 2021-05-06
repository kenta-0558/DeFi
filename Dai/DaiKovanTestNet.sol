// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


interface DaiToken {
    function totalSupply() external view returns (uint256); 
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
}


contract Test {
    
    DaiToken public daiToken;
    
    constructor() {
        daiToken = DaiToken(0x4F96Fe3b7A6Cf9725f59d353F723c1bDb64CA6Aa);
    }  
    
    function getTotalSupply() public view returns (uint) {
        return daiToken.totalSupply();
    }
    
    function getName() external view returns (string memory) {
        return daiToken.name();
    }
    
    function getSymbol() external view returns (string memory) {
        return daiToken.symbol();
    }
}