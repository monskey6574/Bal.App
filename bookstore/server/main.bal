import ballerina/io;
import ballerina/http;
import ballerina/time;

listener http:Listener httpListener = new (9090);

//the books table
type Books record{
    readonly int id;
    string name;
    string price;
    time:Date datePublished;
};

//table data in code

table<Books> key(id) books = table[
    {id:1 , name:"The Antactica" , price:"3$" , datePublished:{year: 2025 ,month: 1,day:3}}

];

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

//books path and get books related to the category
service /books on httpListener{

    //path to novels

    //get data to array and return it to array
    resource function get novels() returns Books[] | error{
        //return array data
        return books.toArray();
    }
}



public function main() {
    io:println("Server is running...");
}
