// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint public tokenCount;
    constructor() ERC721("Jas Token","JASS") {}

    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount++;
        // minitng of the token 
        
        _safeMint(msg.sender, tokenCount);
        // this function is to set the metadata of the token
        _setTokenURI(tokenCount, _tokenURI);
        return tokenCount;
    }
}