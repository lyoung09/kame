//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.4;

contract Token {
    mapping(address=> uint) public balances;
    mapping(address => mapping(address => uint)) public allowance;
    uint public totalSupply = 10000000000000 * 10 ** 18;
    string public name = "KAME TOKENs";
    string public symbol = "KAT";
    uint public decimals = 18;
    int public balance;

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);

    constructor() {
        
        balances[msg.sender] = totalSupply;
        balance=0;
        
    }
    
    function balanceOf(address owner) public view returns(uint) {
        return balances[owner];
    }

    function transfer(address to, uint value) public returns(bool) {
        require(balanceOf(msg.sender) >= value, 'balance too low');
        balances[to] += value;
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint value) public returns(bool) {
        require(balanceOf(from) >= value, 'balance too low');
        require(allowance[from][msg.sender] >= value, 'allowance too low');
        balances[to] += value;
        balances[from] -= value;
        emit Transfer(from, to, value);
        return true;
    }

    function approve(address spender, uint value) public returns(bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    } 

    
    function getBalance() view public returns(int){
        return balance;
    }

    function depositBalance(int amt) public {
         balance=balance + amt;
    }

    function hoit() view internal returns(address){
        return msg.sender;
    }

   
   
}