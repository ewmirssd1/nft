// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Ownable.sol";
import "./Counters.sol";
import "./ERC721URIStorage.sol";
import "./ERC721.sol";
contract mycolection is Ownable , Counters , ERC721URIStorage {
    using Counters for Counter;
    Counters.counter private _tokenIdCounter;

    //constructor
    constructor ()ERC721 ("MYtoken","TIK"){}

    //functions
    function safeMint(address to , string memory uir) public onlyOwner{
        uint tokenId = _tokenIdcounter.current();
        _tokenIdcounter.increment();
        _safeMint(_msgSender(), tokenId);
        _setTokenURI(tokenId, uir);
        return tokenId;
    }

    function tokenURI(uint256 tokenId)public view override(ERC721 , ERC721URIStorage)returns(string memory){
        return super.tokenURI(tokenId);

    }


    

    

}