// SPDX-License-Identifier: MIT
// Tells the solidity compiler to compile only from v0.8.13; to v0.9.0
pragma solidity ^0.8.13;

contract Ethertransfer {
    function sendEther(address payable _receiver) public payable {
        _receiver.transfer(msg.value);
    }
    function transfer(int x) public returns (int) {
        if(x< 10){
            return 0;
        }else if(x<20) {
            return 1;
        }else {
            return 2;
        }
    }
}