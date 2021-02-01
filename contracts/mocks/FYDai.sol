// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.6.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract FYDai is ERC20 {

    uint256 public maturity;

    constructor(string memory name, string memory symbol, uint256 maturity_)
        public
        ERC20(name, symbol)
    {
        maturity = maturity_;
    }

    function isMature() external view returns(bool) {
        return block.timestamp >= maturity;
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}
