// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    //basic types: uint int boolean bytes address
    // favouriteNum is a variable
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber ) public {
favouriteNumber = _favouriteNumber;
    }

function retrieve() public view returns(uint256) {
    return favouriteNumber;

} 

}