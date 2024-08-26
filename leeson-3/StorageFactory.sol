// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIdx, uint256 _simpleStorageNumber) public {
        /*
        In order to interact w any contract, you need:
            Address
            ABI - Application Binary Interface
        */
        simpleStorageArray[_simpleStorageIdx].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIdx) public view returns (uint256) {
        return simpleStorageArray[_simpleStorageIdx].retrieve(); 
    }
}
