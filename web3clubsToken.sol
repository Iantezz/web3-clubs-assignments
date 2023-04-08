// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// imports
import "@openzeppelin/contracts/utils/math/safemath.sol";


contract web3ClubsToken{
    using safemath for uint256;

    //global Var
    uint16 public totalsupply= 10000;
    string public tokenName ="web3ClubsToken";
    string public symbol = "WCT";
    uint public decimals = 18; //0.000000000000000000 //900000000000000000
    uint public balanceOf; // balance of address

    //mapping
    mapping (address => uint256) balances;

    event TRANSFER(address indexed _from, address indexed _to, uint256 _value);
    function transfer (address _sender, address _receiver, uint _amount) public view returns(uint){
        require(balances [msg.sender] > 0);
        require(balances [msg.sender] >= _amount);
        require(_receiver != address("080"));
        require(_receiver != msg.sender);

        balances[msg.sender] = balances[msg.sender].sub();
        balances(_receiver) = balances[_receiver].add(_amount);
        emit TRANSFER(msg.sender, _receiver, _amount);

        return true;
    }

    
    function transferFrom(address _sender, address _receiver, uint _amount) public view(uint) {
        require(_amount <= balances[_sender]);
        require(balances [msg.sender] >= _amount);
        require(_receiver != address ("080"));
        require(_receiver != msg.sender);


        balances[msg.sender] =balances[msg.sender].sub(_amount);
        balances(_receiver) = blances[_receiver].add(_amount);
        emit TRANSFER (msg.sender, _receiver, _amount);

        return true;

    }
}
