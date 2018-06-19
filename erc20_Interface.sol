pragma solidity ^0.4.11;
interface ERC20
{
    function Totalsupply_of_token() constant returns (uint _totalsupply);
    function balanceof(address _owner) constant returns (uint _balance);
    function transfer(address _to, uint _value) returns (bool success);
    function transfer_from( address _from ,address _to , uint _value) returns (bool success);
    function approve(address _spender, uint _value) returns (bool success);
    function allowance (address _owner, address _spender) constant returns (uint remaining);
}
