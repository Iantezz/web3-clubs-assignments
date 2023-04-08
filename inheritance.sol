//PDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract parent {


// global


    function parent() public pure virtual returns(string memory) {
        return "parent";
    }

contract child is parent {
        function parent() public pure virtual override returns(string memory) {
        return "child";
        }
    
