//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//contract ReceiveEther {
    //receive() external payable {}
   // fallback ()external payable{}
   // function getBalance() public view returns(uint){
       // return address(this).balance;

   // }
//}

contract SendEther {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }
    function sendviaTransfer(address payable _to, uint _value) external payable{
        require(_value >0,"value must be greater than zero");
        _to.transfer(_value);
    }
    function sendviaSend(address payable _to) public payable{
        bool sent = _to.send(msg.value);
        require(sent,"failed to send Ether");
    }
    //function sendviaCall(address payable _to) public payable{
    //(bool sent, bytes memory data) = _to.call(value:msg.value)("success");
    //require(sent,"failed to send Ether");
    //}
}