// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract Counter {
    // app where users can come and update the count
    uint256 public count=0;
    
    function increament() public {
        count++;
    }

}
