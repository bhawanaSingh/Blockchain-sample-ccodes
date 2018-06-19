pragma solidity ^0.4.11;
interface ERC20
{
    function Totalsupply_of_token() external constant returns  (uint _totalsupply);
    function balanceof(address _owner) external constant returns (uint _balance);
    function transfer(address _to, uint _value) external returns (bool success);
    function transfer_from( address _from ,address _to , uint _value) external returns (bool success);
    function approve(address _spender, uint _value) external returns (bool success);
    function allowance (address _owner, address _spender) external constant returns (uint remaining);
}
