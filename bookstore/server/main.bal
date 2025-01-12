import ballerina/io;
import ballerina/http;

listener http:Listener httpListener = new (9090);

service / on httpListener {

    // Root path /
    resource function get .() returns string {
        return "Hello world ";
    }

    // Dynamic path /greeting/{name}
    resource function get [string name]() returns string {
        return "Hello " + name;
    }
}

public function main() {
    io:println("Server is running...");
}
