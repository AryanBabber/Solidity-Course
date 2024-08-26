// SPDX-License-Identifier: MIT
pragma solidity 0.8.26; // first line. imports solidity version
// pragma solidity ^0.8.26 -> anything above specific version
// pragma solidity >=0.8.17 <8.27 -> version within that range

contract SimpleStorage {
    /*
        4 most basic data types
            bool
            uint (unsigned)
            int
            address
    */

    // bool hasFavoriteNumber = true;
    // bool hasFavoriteNumber = false;
    // int hasFavoriteNumber = 123;
    uint256 public favoriteNumber; // default value for uint or int = 0
    // string favNumberInText = "Five";
    // address myAddress = 0x0Bd2E1BB12306aFeb9c37A725B7542e9947e7b4f;
    // bytes32 favBytes = "cat"; // 0x12345abcd

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //example of creating an array: uint256[] public favNumsList;
    People[] public people; // dynamic array, since there's no fixed length or a number inside square brackets

    mapping(string => uint256) public nameToFavNumber;
    // need to make the function virtual to allow child contract to override
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;
    }

    // view and pure functions, when called alone, don't spend gas
    // view -> only reads value
    // pure -> along with view features, it disallows us to read from blockchain state
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // function add() public pure returns(uint256) {
    //     return 1+1;
    // }

    // calldata, memory and storage -> 3 main methods
    // calldata -> temporary variables which cannot be modified
    // memory -> temporary variables which can be modified
    // storage -> permanenet variables
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavNumber[_name] = _favoriteNumber;
    }

}
