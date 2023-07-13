// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    uint[10] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // Fixed-Size Array

    function getSumOfArray() public view returns (uint256) {
        uint256 length = numbers.length; // Caching of State Variable
        uint sum = 0;
        for (uint i = 0; i < length; ++i) { // Different For Loop Increment Syntax
            sum += numbers[i];
        }
        return sum;
    }

    function notOptimizedFunction() public {
        uint256 length = numbers.length; // Caching of State Variable
        unchecked { // Uncheck Block
            for (uint i = 0; i < length; ++i) { // Different For Loop Increment Syntax
                numbers[i] = 0;
            }
        }
    }

    function optimizedFunction() public {
        for (uint i = 0; i < numbers.length; ++i) { // Different For Loop Increment Syntax
            numbers[i] = 0;
        }
    }
}
