// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {

    string _value;

    function get() public view returns(string memory) {
        return _value;
    }

    function set(string memory value) public {
        _value = value;
    }
}