// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/simplestorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testIncrement() public {
        uint256 initialValue = simpleStorage.storedValue();
        simpleStorage.increment();
        uint256 newValue = simpleStorage.storedValue();
        assertEq(newValue, initialValue + 1);
    }

    function testDecrement() public {
        simpleStorage.increment();
        uint256 initialValue = simpleStorage.storedValue();
        simpleStorage.decrement();
        uint256 newValue = simpleStorage.storedValue();
        assertEq(newValue, initialValue - 1);
    }
}
