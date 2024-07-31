// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AraAraERC20 is ERC20, Ownable {
    struct Redemption {
        uint256 choice;
        string merch;
        bool redeemed;
    }

    mapping(address => Redemption) private redemptions;

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

    function checkBalance() public view returns(uint256) {
        return balanceOf(msg.sender);
    }

    function ShowItems() public pure returns(string memory items) {
        items = "Who is your future lover?\n1. Karina\n2. Chaewon\n3. Winter\n4. Minju\n5. Haerin\n6. Eunchae";
        return items;
    }

    function redeemTokens(uint choice) public {
        string memory merch;
        uint256 price;

        if (choice == 1) {
            price = 5;
            merch = "Karina";
        } else if (choice == 2) {
            price = 10;
            merch = "Chaewon";
        } else if (choice == 3) {
            price = 15;
            merch = "Winter";
        } else if (choice == 4) {
            price = 20;
            merch = "Minju";
        } else if (choice == 5) {
            price = 25;
            merch = "Haerin";
        } else if (choice == 6) {
            price = 40;
            merch = "Eunchae";
        } else {
            revert("Invalid choice");
        }

        require(balanceOf(msg.sender) >= price, "You do not have enough Degen Tokens");
        _burn(msg.sender, price);
        redemptions[msg.sender] = Redemption(choice, merch, true);
        emit RedeemedMerch(_msgSender(), choice, string(abi.encodePacked(merch, " is now your girlfriend")));
    }

    function getRedemptionMessage() public view returns (string memory) {
        Redemption memory redemption = redemptions[msg.sender];
        require(redemption.redeemed, "No token redeemed yet");
        return string(abi.encodePacked(redemption.merch, " is now your girlfriend"));
    }

    event RedeemedMerch(
        address indexed user,
        uint256 indexed choice,
        string merch
    );
}
