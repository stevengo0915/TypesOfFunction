/*
Requirements:

1. Only contract owner should be able to mint tokens
2. Any user can transfer tokens
3. Any user can burn tokens
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyTokens is ERC20, Ownable {

    constructor(string memory name, string memory symbol, address initialOwner) ERC20(name, symbol) Ownable(initialOwner) {
    }

    //Function for minting Tokens (onlyOwner modifier)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    //Function for Transfering Tokens
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }

    //Function for burning Tokens
    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }

}
