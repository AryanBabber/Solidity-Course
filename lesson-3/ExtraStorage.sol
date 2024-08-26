// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // need override to make changes in a function whose name is same as parent contract function
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    } 
}
