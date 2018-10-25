pragma solidity ^0.4.0;

import 'github.com/chrisdotn/jsmnSol/contracts/JsmnSolLib.sol';

contract SimpleContract{

    string h = "hello";
    string data;

    function get() public constant returns(string) {
        return data;
    }

    // get array of arguments eg ["arg1", "arg2"]
    function set(string args) public {
        // parse args into json 
        uint returnValue;
        JsmnSolLib.Token[] memory tokens;
        uint actualNum;
        
        (returnValue, tokens, actualNum) = JsmnSolLib.parse(args, 2); 
        JsmnSolLib.Token memory argToken = tokens[1];
        string memory arg = JsmnSolLib.getBytes(args, argToken.start, argToken.end);
        data = arg;
    }

    function getHelloText() public constant returns(string) {
        return h;
    }
}