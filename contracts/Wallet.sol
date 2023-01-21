// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract Wallet {
  address payable public owner;

  constructor() {
    owner = payable(msg.sender);
  }

  receive() external payable {};

  function mintSmartTokenForToken() {
  }

  function burnSmartTokenForToken() {
  }

  function execSmartToken() {
  }

  function withdraw(uint _amount) external {
    require(msg.sender == owner, "caller is not owner");
    payable(msg.sender).transfer(_amount);
  }

  function getBalance() external view returns (uint) {
    return address(this).balance;
  }
}
