pragma solidity ^0.4.11;
 import "browser/erc20_Interface.sol";
    contract myfirsttoken is ERC20 {
        string public constant symbol = "Bistack";
        string public constant name = "my first token";
        uint public constant decimal = 18;
        uint private constant totalsupply_of_token = 1000;
        
        mapping (address=>uint) private _balanceof;
        mapping (address => mapping (address=> uint)) private _allowance;
        
        function Totalsupply_of_token() constant returns (uint _totalsupply) {
             _totalsupply = totalsupply_of_token;
            
        }
        
        function balanceof(address _addr) constant returns (uint _balance){
            return _balanceof[_addr];
            
        }
        function transfer(address _to , uint _value) returns (bool success) {
               if(_value > 0 && _value <=balanceof(msg.sender)) {
                   _balanceof[msg.sender] -= _value;    
                   _balanceof[_to] += _value;
                   return true;
                   }
                   return false;
        }
        
         function transfer_from( address _from ,address _to , uint _value) returns (bool success) {
             
         }
        
         function approve (address _spender, uint _value) returns (bool success) {
             _allowance[msg.sender][_spender] = _value;
             return true;
         }
         function allowance (address _owner, address _spender) constant returns (uint remaining) {
                            return _allowance[_owner][_spender];
    

         }
         
    }
 
 
