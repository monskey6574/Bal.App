import ballerina/io;


public function fahrenheittoCel (float fahrenheit) returns float{
    return (fahrenheit -32)*5/9;
}

public function main() {
    io:println(fahrenheittoCel(3200));

    
}
