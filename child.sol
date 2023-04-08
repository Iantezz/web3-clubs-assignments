//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./inheritance.sol";

contract child{
    function parent() public pure virtual override returns (string memory)
    return "child"
}