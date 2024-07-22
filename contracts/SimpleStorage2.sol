// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

/*contract SimpleStorage {
    // TYPES: boolean, uint, int, address, bytes
    bool hasFavoriteNumber = true;
    string favoriteNumber = "Five";
    int256 favoriteInt = -5;
    address myAddress = 0x6593744B75051be91eD3f28FEdFFeC0D3042aA2C;
    bytes32 favoriteBytes = "cat"; // max bytes size is 32
} */

contract SimpleStorage {
    //uint256 favoriteNUmber;
    // Use array instead. This is an inefficient way!->> People public person = People({favoriteNumber: 2, name: "Patrick"});
    uint256[] favoriteNumbersList;

    mapping(string => uint256) public nameToFavoriteNumber;

    People[] public people;

    // Function to add people to the People array.
    function addPerson(string memory _name, uint256 _favoriteNumber) public  {
        
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber; // MAPPING
    }

    struct People { // Makes a new data type for the array. "People" is considered a new type.
        uint256 favoriteNumber;
        string name;
    } 

    //function store(uint256 _favoriteNumber) public {
      //  favoriteNUmber = _favoriteNumber;
        // 0xd9145CCE52D386f254917e481eB44e9943F39138 function address
    //}

    // "view", "pure" functions don't use gas because they're only reading. Unless calling it inside a function that costs gas
   // function retrieve() public view returns(uint256){ // This function is the exact same as the getter function that the "public" keyword creates
     //   return favoriteNUmber;
    //}
    //calldata = temporary storage that cannot be modified
    //memory = temporary storage CAN be modified. Arrays (including strings), structs, mappings need to be specified as memory
    //storage =
    //mapping = a dictionary


}
