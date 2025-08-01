// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IMinter {
    function mint(address recipient, uint256 amount) external;
}

contract MockERC20 is ERC20, IMinter {
    constructor() ERC20("Dummy", "DmT") {}

    function mint(address recipient, uint256 amount) external {
        _mint(recipient, amount);
    }
}
