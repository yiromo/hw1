// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "../openzeppelin-contracts/contracts/access/Ownable.sol";

contract LW3Token is ERC20, Ownable {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) Ownable(msg.sender) {
        _mint(msg.sender, 10 * 10 ** 18);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
