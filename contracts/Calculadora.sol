//Licencia
//SPDX-License-Identifier: LGPL-3.0-only 


//Version Solidity 
pragma solidity 0.8.30;

//Contract
contract Calculadora {

//Variables 

 uint public result = 10;

//Modifier
modifier checkNumber(uint a) {
    if (a != 10) revert ();
    _;

}


//Events
event Addition (uint numero1, uint numero2, uint result);
event Substraccion (uint numero1, uint numero2, uint result);

//External Fuctions 

 function addition (uint a, uint b) public returns (uint result_){
 
   result_ = a + b;  
   emit Addition (a,b,result_);


 }

 function substraccion (uint a, uint b) public  returns (uint result_){ 

    result_ = substraccion_logic (a, b); 
    
    emit Substraccion (a,b,result_);
 }

function substraccion1 (int a, int b) public pure returns (int result_){ 

    result_ =  substraccion_logic1 (a, b); 
    
    
 }
 function multiplier (uint a) public {
 
    result = a * result;

 }

 function multiplier1 (uint a) public checkNumber (a) {

     result = a * result;
     
 } 

//Internal Fuctions

function substraccion_logic (uint a, uint b) internal pure returns (uint result_){
     result_ = a - b;
     
     
}

function substraccion_logic1 (int a, int b) internal pure returns (int result_){
     result_ = a - b;
     
     
}

}






