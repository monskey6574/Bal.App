import ballerina/io;
import ballerina/http;
import ballerina/sql;
import ballerinax/mysql;
import ballerinax/mysql.driver as _;



type Item record {| 
  int id?;
  string name;
  int quantity;

|};

configurable string host =?;
configurable string username = ?;
configurable string password = ?;
configurable string dbname = ?;
configurable int port = ?;


service /store on new http:Listener(9090){

     final mysql:Client dbClient;
        public function init(){
            self.dbClient=new(host,username,password,dbname,port);
        }
    resource function get .() returns Item[]{
       
        
    }
}

