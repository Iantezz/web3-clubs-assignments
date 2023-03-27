// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogicalOperators {
    bool public a = true;
    bool public b = false;
    
    function logicalOperations() public view returns (bool, bool, bool, bool) {
        bool andResult = a && b;
        bool orResult = a || b;
        bool notA = !a;
        bool notB = !b;
        
        return (andResult, orResult, notA, notB);
    (logicalOperations)
    }
}
