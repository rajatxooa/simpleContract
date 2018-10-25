pragma solidity ^0.4.0;

contract SimpleContract{

    string h = "hello";
    string data;

    function get() public constant returns(string) {
        return data;
    }

    function set(string arg) public {
        data = arg;
    }

    function getHelloText() public constant returns(string) {
        return h;
    }
}