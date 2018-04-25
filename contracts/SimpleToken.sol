pragma solidity ^0.4.15;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract SimpleToken is StandardToken, Ownable {
	string public name = 'SimpleToken';
	string public symbol = 'SMT';
	uint public decimals = 18;
	uint public INITIAL_SUPPLY = 100000 * 1 ether;

	constructor() public {
 		totalSupply_ = INITIAL_SUPPLY;
    	balances[this] = INITIAL_SUPPLY;
	}

	function getTokens() {
    	uint256 value = 10000;
    	if (balances[this] < value) return;
    	require(balances[msg.sender] < 200000);
    	balances[this] = balances[this].sub(value);
    	balances[msg.sender] = balances[msg.sender].add(value);
  	}
}