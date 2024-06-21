// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // local variables
    function getValue() public pure returns (uint8) {
        uint8 value = 8;
        return value;
    }

    // state variables
    int256 public number = 2;
    int256 public negativeNumber = -1;

    string public nftImage = "img link to nft";

    bytes32 public myByteImage = "image to nft in byte";

    struct UserDetail {
        uint256 id;
        string name;
        uint8 age;
        string place;
    }

    UserDetail public userDetail = UserDetail(1234543, "rafi", 21, "nigeria");

    // Arrays
    uint256[] public myArray = [3, 2, 1];
    string[] public newArr;
    string[] public stringArray = ["ahaha", "skfhdask", "akjdl"];
    string[][] public my2darray = [["3", "45", "1"], ["2", "55", "0"]];

    function getLenght() public view returns (uint256) {
        return myArray.length;
    }

    function addvalue(string memory _value) public {
        newArr.push(_value);
    }

    // mapping

    // mapping (key => value) myMapping
    mapping(uint256 => string) names;
    mapping(uint256 => Book) public books;

    constructor() {
        names[1] = "one name";
        names[2] = "gg";
        names[3] = "d";
    }

    struct Book {
        string author;
        string bookName;
    }

    function addBook(
        uint8 _id,
        string memory _author,
        string memory _book
    ) public {
        books[_id] = Book(_author, _book);
    }

    // nested mappings

    mapping(address =>mapping (uint => Book)) public  nestedMapping;

    function addNestedMapping(uint _id,string memory _author,string  memory _book)public {
        nestedMapping[msg.sender][_id] = Book(_author,_book)  ;
    }
}
