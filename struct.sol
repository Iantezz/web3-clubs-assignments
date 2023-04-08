//SPDX-License-Identifier: MIT
//Tells the solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

contract school {
    struct student{
        string name;
        uint studentId;
        bool completed;
    }
    //Index 0,1,2....
    student[]students;
    function createStudent(string calldata _name,uint _studentId)public{
    students.push(student(_name, _studentId, false));
    }


}