// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error{
    string public state = "Number is even";
    function _require(uint _x) public view returns (string memory){
        require(_x%2 ==0,"Input must be even number");
        return state;
    }
    function _revert(uint _x) public view returns (string memory){
        if(_x % 2 == 0){
            revert("Input must be even number");
        }
        return state;
    }
    function _assert(uint _x) public view returns (string memory){
        assert(_x % 2 ==0);
        return state;
    }
}