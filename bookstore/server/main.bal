import ballerina/http;
import ballerina/io;
import ballerinax/mysql;

// MySQL client configuration
mysql:Client bookstoreClient = new ({
    host: "localhost",
    port: 3306,
    username: "root",   // Username
    password: "", // Password
    database: "bookstore" // Database name
});

// The books table structure
type Books record {
    readonly int id;
    string title;
    string author;
    string category;
    string price;
};

// New book structure for adding books
type NewBook record {
    string title;
    string author;
    string category;
    string price;
};

listener http:Listener httpListener = new (9090);

// Root service
service / on httpListener {

    // Root path /
    resource function get .() returns string {
        return "Hello, welcome to the Bookstore API!";
    }

    // Dynamic path /{name}
    resource function get [string name]() returns string {
        return "Hello, " + name;
    }
}

// Books service
service /books on httpListener {

    // Endpoint to get all books
    resource function get all() returns Books[]|error {
        string query = "SELECT * FROM books";
        mysql:Rows result = check bookstoreClient->select(query);
        
        // Convert the result to a list of books
        Books[] bookList = [];
        foreach var row in result {
            Books book = <Books> row;
            bookList.push(book);
        }

        return bookList;
    }

    // Endpoint to add a new book to the database

    }

    // Endpoint to get a book by its ID
    resource function get byId(int id) returns Books|error {
        string query = `SELECT * FROM books WHERE id = ${id}`;
        mysql:Rows result = check bookstoreClient->select(query);

        // If book is found, return the first record
        if result.isEmpty() {
            return error("Book not found");
        }
        return <Books> result[0];
    }
}

// Entry point for the program
public function main() {
    io:println("Server is running on http://localhost:9090/");
}
