pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract MyToken is ERC20, ERC20Detailed {
  string public _name = "MyToken";
  string public _symbol = "MTKN";
  uint8 public _decimals = 18;

  uint private INITIAL_SUPPLY = 10000e18;
  constructor () public
  ERC20Detailed(_name, _symbol, _decimals)
  ERC20()
  {
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}
