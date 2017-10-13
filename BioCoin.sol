pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BioCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BioCoin(address _owner)  UpgradeableToken(_owner) {
    name = "BioCoin";
    symbol = "BIO";
    totalSupply = 1000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}