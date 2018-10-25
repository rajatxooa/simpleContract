pragma solidity ^0.4.0;

contract SimpleContract{

    string h = "hello";
    mapping (string => string) arguments;

    function get(string[] args) constant returns(string) {
        return arguments[args[0]];
    }

    function set(string[] args) public {
        arguments[args[0]] = args[1];
    }

    function getHelloText() constant returns(string) {
        return h;
    }
}