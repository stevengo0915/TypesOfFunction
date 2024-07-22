# Types of Function 
## Overview
MyToken is an ERC20 token contract that allows for token minting, burning, and transferring functionalities. The contract inherits from OpenZeppelin's ERC20 and Ownable contracts, providing basic token operations and access control.

## Requirements
- Only the contract owner should be able to mint tokens.
- Users can transfer tokens to other addresses.
- Users can burn their own tokens.

## Recordings
- 1st Recording https://www.loom.com/share/b51c9d33b5a5467e8c04f7706a242b1f?sid=e1c83e1d-c4fc-4a32-bc03-c4f62a6f5ab9d
- 2nd Recording https://www.loom.com/share/754eef2f92064ad686da154cbf7a5254?sid=29ddc4dd-270d-422e-9009-398096880c3c
- 3rd Recording https://www.loom.com/share/5f674cc7234c4b4ba33545a0f143a383?sid=a155832b-43df-4bf3-8b71-92c1d475322e
  
### Constructor
- **MyToken(string memory name, string memory symbol, address initialOwner)**
  - Initializes the token with a name and symbol.
  - Sets the initial owner of the contract.

### Token Minting
- **function mint(address to, uint256 amount) public onlyOwner**
  - Allows the contract owner to mint new tokens and allocate them to a specified address (`to`).

### Token Burning
- **function burn(uint256 amount) public**
  - Allows a user to burn a specified amount of their own tokens, reducing the total supply.

### Token Transfers
- **function transfer(address to, uint256 amount) public override returns (bool)**
  - Transfers a specified amount of tokens from the caller's address to another address (`to`).

### Approval Mechanism
- **function transferFrom(address from, address to, uint256 amount) public override returns (bool)**
  - Transfers tokens on behalf of another address (`from`) to a recipient address (`to`), given proper allowance is provided.

### Additional Functionality
- **function decimals() override public pure returns (uint8)**
  - Returns the number of decimals used to represent token balances (in this case, 0).

## Usage
1. Deploy the contract, providing a name, symbol, and initial owner address.
2. The owner can mint tokens using the `mint` function.
3. Users can transfer tokens using the `transfer` function.
4. Users can burn their tokens using the `burn` function.

## Deployment
Deploy this contract on a compatible Ethereum Virtual Machine (EVM) blockchain, such as Ethereum mainnet or a testnet.

## Testing
- Use appropriate test frameworks like Truffle, Hardhat, or Remix for testing functionalities such as minting, burning, and transferring tokens.
- Ensure that ownership and access control functionalities are properly tested.

## Security Considerations
- Ensure that only trusted parties have ownership of the contract.
- Use proper access control mechanisms to prevent unauthorized operations.
- Test thoroughly before deploying to a production environment.

## License
This project is licensed under the Steven Go - see the `LICENSE` file for details.
