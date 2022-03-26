pragma solidity >= 0.7.0 <0.9.0;

contract coin{
    address public minter;
    mapping (address => uint) public balances;
    
    event sent(address from,address to,uint amount);

    constructor(){
    	minter =msg.sender;
    }


    function mint(address reveiver , uint amount) public {
         
         require (msg.sender==minter);
         require (amount <1e60);
         balances[reveiver] +=amount;

    }

    function send(address reveiver,uint amount) public{
    	require(amount <= balances[msg.sender],"tai khoan khong du");
    	balances[msg.sender] -=amount;
    	balances[reveiver] +=amount;
    	emit sent(msg.sender,reveiver,amount);

    }
    
      
    

}

