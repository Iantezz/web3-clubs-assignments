//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract MockToken{
    // 3 optional guide
    string public  name ="Mock Token";
    string public symbol ="MT2";
    uint8 public decimals = 18; // 1== 000000000000000001 = 100000000000000000
    uint256 public decimalFactor = 10 ** uint256(decimals);
    uint256 public totalsupply =10000000 * decimalFactor;

event Transfer(address indexed _from, address indexed _to, uint256 _value);
event Approval(address indexed _owner, address indexed _spender, uint256 _value);

// 6 guide
//new keywords 
// address =0x698d232A9aB5Ffb17e70f4398A81D3FD8352a3AC
// bool =true or false
// mapping = map
// msg.sender
//events

mapping(address => uint256) public balanceOf;
mapping(address => mapping(address => uint256)) public allowance;

constructor (){
    balanceOf[msg.sender] = totalsupply;

}
// todo add safe math 
function transfer(address _to,uint256 _value) public returns (bool success){
    require(balanceOf[msg.sender] >= _value);
    balanceOf[msg.sender] -= _value;
    emit Transfer(msg.sender, _to, _value);
    return true;

}



}