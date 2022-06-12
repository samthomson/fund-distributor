// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DistributorContract {
	address payable owner; // contract creator's address
	mapping(address=>uint256) investors;
	uint totalInvestors;
	uint256 totalDeposits;

	constructor() {
		owner = payable(msg.sender); 
	}

	// todo: function to invest funds
	function invest(uint amount) public {
		if(investors[msg.sender] == 0){
			totalInvestors += 1;
		}
        // add to existing (zero by default - so this is the same for initial as subsequent
        investors[msg.sender] = investors[msg.sender] + amount;		
		totalDeposits += amount;
	}

	// function that gets investment of an address
	function getDeposit() public view returns (uint256 deposit) {
		return investors[msg.sender];
	}

	function getInvestorCount() public view returns (uint count) {
		return totalInvestors;
	}

	function getTotalDeposits() public view returns (uint256 total) {
		return totalDeposits;
	}

	// todo: function to distribute funds (as a param) to investors
}
