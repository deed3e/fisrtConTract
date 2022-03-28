pragma solidity >= 0.7.0 <0.9.0;


contract  palllgree{
   address public minter;
   mapping(address => uint) public balances;




  constructor() public {
  	   minter = msg.sender;
  
  }
  
  function mint(address reveiver,uint amount){

  	require (msg.sender == minter);
    require (amount < 1e9); 
  	require (amount > 0);
  	balances[reveiver] +=amount;

  	
  	
  }
  

}

