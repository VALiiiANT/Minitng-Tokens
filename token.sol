// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. The contract will have public variables that store the details about your token (Token Name, Token Abbrv., Total Supply).
    2. The contract will have a mapping of addresses to balances (address => uint).
    3. A mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount.
    4. The contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, burn function should make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // variables for token creation
    string public tokenName= "DELTA";
    string public tokenAbbrv= "DET";
    uint public totalSupply= 0;

    // mapping variable
    mapping (address => uint) public bal;

    // function to mint tokens
    function mint(address _add, uint _val) public{
        totalSupply+=_val;            // updating the total supply of tokens
        bal[_add]+=_val;              // updating the balance of the "sender"
    }

    // function to burn tokens
    function burn(address _add, uint _val) public{
        if(bal[_add]>=_val){
            totalSupply-=_val;        // updating the total supply of tokens
            bal[_add]-=_val;          // updating the balance of the "sender"
        }
    }

}
