// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


interface DaiToken {
    function transfer(address dst, uint wad) external returns (bool);
    function balanceOf(address guy) external view returns (uint);
}