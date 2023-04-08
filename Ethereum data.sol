//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorage {
    uint256 private data; // private data variable
    address private owner; // contract owner

    // Events for data storage and retrieval
    event DataStored(uint256 indexed newData);
    event DataRetrieved(uint256 retrievedData);

    // Modifier to restrict access to the contract owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can perform this operation");
        _;
    }

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // function to store data
    function storeData(uint256 _data) public onlyOwner {
        data = _data;
        emit DataStored(_data);
    }

    // function to retrieve data
    function retrieveData() public view returns (uint256) {
        
        return data;
    }
}
