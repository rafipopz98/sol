// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    // local variables
    function getValue() public  pure returns (uint8){
        uint8 value= 8;
        return value;
    }   

    // state variables
    int public number  = 2;
    int public negativeNumber = -1;



    string public nftImage = "img link to nft";

    bytes32 public myByteImage = "image to nft in byte";

    struct UserDetail{
        uint256 id;
        string name;
        uint8 age;
        string place;
    }

    UserDetail public  userDetail = UserDetail(1234543,"rafi",21,"nigeria");

}