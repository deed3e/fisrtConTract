pragma solidity >=0.7.0 <0.9.0;


contract game{
    uint public countPlayer =0;
    mapping(address => Player) public  players;
    enum level{newbie,medium,highgt} 

    struct Player {
     	address addr;
     	uint amount;
     	string name;
     	uint age;
        level lv; 
     	
     }


    function addPlayer(uint amount, string memory name ,uint age) public {
                players[msg.sender]=Player(msg.sender,amount,name,age,level.newbie);
                countPlayer +=1;

     }
     

}
