// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    uint256 public constant MAX_SUPPLY = 500000; 

    constructor() ERC20("Degen Token", "DGN") Ownable(msg.sender) {
        _mint(msg.sender, 20000); 
    }

    function decimals() public view virtual override returns (uint8) {
        return 0;
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "Exceeds maximum supply");
        _mint(to, amount);
    }

    function transferTokens(address receiver, uint256 value) external {
        require(balanceOf(msg.sender) >= value, "You do not have enough Tokens");
        _transfer(msg.sender, receiver, value);
    }

    function burnTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not have enough Tokens");
        _burn(msg.sender, _value);
    }

    function redeemTokens(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "You do not have enough Tokens");
        _burn(msg.sender, amount);
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }
}

