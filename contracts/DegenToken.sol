// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AraAraERC20 is ERC20, Ownable {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender) {}

    // Function to mint new tokens, only accessible by the contract owner
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens, accessible by any user
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Function to transfer tokens
    function transferTokens(address recipient, uint256 amount) external returns (bool) {
        return transfer(recipient, amount);
    }

    // Function to approve and transfer tokens from another account
    function transferFromAccount(address sender, address recipient, uint256 amount) external returns (bool) {
        return transferFrom(sender, recipient, amount);
    }


    function checkBalance() public view returns(uint256){
        return balanceOf(msg.sender);
    }

    function browseMerch() public pure returns(string memory items){
        items = "Welcome to Degen Merch Store~! 1. Official Degen NFT Jersey 2. Official Degen NFT Coin Figure 3. Official Degen NFT Cap";
        return items;
    }

    function redeemTokens(uint choice) public{
        string memory merch;
        uint256 price;
        if(choice == 1){
            require(balanceOf(msg.sender) >= 20, "You do not have enough Degen Tokens");
            price = 20;
            merch = "Official Degen NFT Jersey";
        } else if(choice == 2){
            require(balanceOf(msg.sender) >= 15, "You do not have enough Degen Tokens");
            price = 15;
            merch = "Official Degen NFT Coin Figure";
        } else if(choice == 3){
            require(balanceOf(msg.sender) >= 8, "You do not have enough Degen Tokens");
            price = 8;
            merch = "Official Degen NFT Cap";
        }
        _burn(msg.sender, price);
        emit RedeemedMerch(_msgSender(), choice, merch);
    }

    event RedeemedMerch(
        address indexed user,
        uint256 indexed choice,
        string merch
    );
}

