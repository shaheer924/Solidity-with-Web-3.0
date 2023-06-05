//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // initialize library

contract SimpleStorage{
    uint256 public favouriteNumber;
    // People public person = People({id: 101, name: "Shaheer"});

    struct People {
        uint256 id;
        string name;
    }

    People[] public persons;

    mapping (string => uint256) public nameOfPerson;

    function storePerson (string memory _name, uint256 _id) public {
        /*People memory person = People({id: _id, name: _name});
        persons.push(person);*/

        persons.push(People(_id, _name));
        nameOfPerson[_name] = _id;
    }

    function store(uint _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
}
