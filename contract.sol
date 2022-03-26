pragma solidity >=0.7.0 <0.9.0

contract  firstContract{
	uint saveDate;

	function  set(uint x) public{
		saveDate = x;
		
	}

	function get() public view return(uint x){
		return saveDate;
	}
	

}


