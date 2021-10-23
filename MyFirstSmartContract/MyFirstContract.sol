pragma solidity ^0.8.7;

contract MyFirstContract {
    //create number
    uint256 number;
    //create array with type
    uint256[] numbersArray;
    
    //everytime we deploy we can deploy with something diff
    constructor(uint256 _num){
        number = _num;
    }
    
    //_num is state variable
    function changeNumber(uint256 _num) public {
        number = _num;
    }
    
    //read the state variable number and return it as uint256 bits
    function getNumber() public view returns (uint256) {
        return number;
    }
    
    //function visibility public(anyone) / external(externally called)
    //internal(only internally called / private (accessible in the contract only)
    //pure we are just making calculations
    
    function addNumber(uint256 _num1, uint256 _num2) public pure returns(uint256){
        return _num1 + _num2;
    }
    
    function addNumToArray(uint256 _num) public returns (uint) {
        numbersArray.push(_num);
        return numbersArray.length;
    }
    
}