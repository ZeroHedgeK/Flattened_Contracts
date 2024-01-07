// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../deps/npm/@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "../deps/npm/@openzeppelin/contracts@5.0.1/access/Ownable.sol";
import "../deps/npm/@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Permit.sol";

contract VitalikMumDOGE is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("VitalikMumDOGE", "VMUMDOGE")
        Ownable(initialOwner)
        ERC20Permit("VitalikMumDOGE")
    {
        _mint(msg.sender, 69000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
