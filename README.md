Certainly! Here’s the complete README in code form with all the instructions included:

```markdown
# DegenToken

A simple ERC20 token with additional features for minting, burning, transferring, and redeeming tokens for virtual merchandise.

## Description

The `DegenToken.sol` contract is an ERC20 token implementation that allows the owner to mint new tokens and users to burn their tokens. Additionally, users can redeem tokens for virtual merchandise, which will trigger a message indicating the redemption. The contract also includes a function to display a list of available items for redemption.

## Getting Started

### Installing

1. Clone the repository:
   ```sh
   git clone https://github.com/Pagamaa/DegenerateToken.git
   cd DegenerateToken
   ```

2. Open the `DegenToken.sol` contract in [Remix IDE](https://remix.ethereum.org/):
   - Go to the Remix IDE.
   - Create a new file and name it `DegenToken.sol`.
   - Copy and paste the contract code from the repository into the new file.

### Executing Program

1. **Compile the Contract:**
   - In the Remix IDE, navigate to the "Solidity Compiler" tab.
   - Select the correct compiler version (`0.8.26`).
   - Click on "Compile DegenToken.sol".

2. **Deploy the Contract:**
   - Navigate to the "Deploy & Run Transactions" tab.
   - Select the environment (e.g., JavaScript VM, Injected Web3).
   - Ensure your wallet is connected if using Injected Web3.
   - Click on "Deploy".

3. **Interact with the Deployed Contract:**
   - Use the Remix IDE interface to interact with the contract's functions.
   - Example interactions:

   ```sh
   // Mint tokens (only owner)
   degenToken.mint("0xYourAddress", 1000);

   // Burn tokens
   degenToken.burn(100);

   // Transfer tokens
   degenToken.transferTokens("0xRecipientAddress", 50);

   // Check balance
   const balance = degenToken.checkBalance();

   // Show available items
   const items = degenToken.ShowItems();

   // Redeem tokens for an item
   degenToken.redeemTokens(1);

   // Get redemption message
   const message = degenToken.getRedemptionMessage();
   ```

## Help

If you encounter common issues or problems, consider the following:

1. Ensure you have the correct network configuration in Remix IDE.
2. Verify that your wallet address has enough tokens for the required operations.
3. Check the console for any error messages or revert reasons.

## Authors

Peter Aguilar  
[GitHub](https://github.com/Pagamaa)
