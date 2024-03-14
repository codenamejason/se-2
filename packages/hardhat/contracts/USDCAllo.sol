// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract USDCAllo is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("USDCAllo", "USDC")
        Ownable()
        ERC20Permit("USDCAllo")
    {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}