// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 public storedValue;

    function increment() public {
        storedValue++;
    }

    function decrement() public {
        storedValue--;
    }
}
