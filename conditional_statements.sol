//SPDX-License-Identifier: MIT
//Tells the solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

contract hello{
    //if , else if and else also for loop,while
    //logic o
    //<=,>=,==
    //|| true or false ,
    //&& true or false
    //! true or false
    // 100 to 75 = A
    // 74 - 65 = B
    // 64 - 55 = C
    function transfer(int x) public pure returns(int){
        if(x<10){
            return 0;
        } else if(x< 20){
            return 1;
        }else {
            return 2;
        }
    }
    //NOTE infinite loops 
    function shortHand(uint _a) public pure returns(uint){
        return _a <10 ? 1 : 2;
    }
}