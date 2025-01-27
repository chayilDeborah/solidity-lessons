// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    //basic types: uint int boolean bytes address
    // favouriteNum is a variable
    uint256 public myfavouriteNumber;

struct Person {
    uint256 favouriteNumber;
    string name;
}

// static array : specifies the total amount of objects in the array [0, 1, 2]
// Person[3] public listsOfPeople;

//dynamic array : can take as much objects as needed
Person[] public listOfPeople;

    function store(uint256 _favouriteNumber ) public {
myfavouriteNumber = _favouriteNumber;
    }

function retrieve() public view returns(uint256) {
    return myfavouriteNumber;

} 

//memory, calldata, storage
//memory is a temporary variable that can be changed or modified
//a calldata is a temporary variable that cannot be modified
//storage is temporary variables that can be modified
function addPerson(string memory _name, uint256 _favoriteNumber) public  {
    listOfPeople.push( Person(_favoriteNumber, _name) );

}

}