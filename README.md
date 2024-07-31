# DegenToken

A simple ERC20 token with additional features for minting, burning, transferring, and redeeming tokens for virtual merchandise.

## Description

The `DegenToken.sol` contract is an ERC20 token implementation that allows the owner to mint new tokens and users to burn their tokens. Additionally, users can redeem tokens for virtual merchandise, which will trigger a message indicating the redemption. The contract also includes a function to display a list of available items for redemption.

## Getting Started

### Installing

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/Pagamaa/DegenerateToeken.git
   cd DegenerateToken
   ```

2. **Open the Contract in Remix IDE:**
   - Go to [Remix IDE](https://remix.ethereum.org/).
   - Create a new file named `DegenToken.sol`.
   - Copy and paste the contract code from the repository into the new file.

### Executing the Program

1. **Compile the Contract:**
   - In the Remix IDE, navigate to the "Solidity Compiler" tab.
   - Select the correct compiler version (`0.8.26`).
   - Click on "Compile DegenToken.sol".
   
   ![Compile Contract](https://github.com/user-attachments/assets/87398ccc-82f8-4e1b-a47b-9f818042f6f9)

2. **Deploy the Contract:**
   - Navigate to the "Deploy & Run Transactions" tab.
   - Select the environment (e.g., JavaScript VM, Injected Web3).
   - Ensure your wallet is connected if using Injected Web3.
   - Click on "Deploy".

3. **Interact with the Deployed Contract:**
   - Use the Remix IDE interface to interact with the contract's functions.
   - Set the name of the token to `Degen` and the symbol to `DGN`.
   
   ![Deploy Contract](https://github.com/user-attachments/assets/eb1e7c79-2c6e-4e2e-922e-af52511f3bf1)
   
   - Use the functions in the "Deployed Contracts" section. Ensure you check your account and who is using it before minting to prevent errors.
   
   ![Interact with Contract](https://github.com/user-attachments/assets/d30feb59-02c6-4fa4-a328-dfbf55996725)
   
   - This is an example output for the program. You can see in the console below that there are no errors.
   
   ![Console Output](https://github.com/user-attachments/assets/46c472a2-77be-443d-bbd8-9f00ddf01f7a)

## Help

If you encounter common issues or problems, consider the following:

1. Ensure you have the correct network configuration in Remix IDE.
2. Verify that your wallet address has enough tokens for the required operations.
3. Check the console for any error messages or revert reasons.

## Authors

Peter Aguilar  
[GitHub](https://github.com/Pagamaa)
