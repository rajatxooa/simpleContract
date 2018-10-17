contract SimpleContract{

    string h = "hello";
    function g() constant returns(string) {
        return h;
    } 
}