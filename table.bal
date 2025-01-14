
import ballerina/io;

type Employee record {
   readonly int id;
   string name;
};


public function main(){
table<record {
   readonly int id;
   string name;
}> key(id) employeeTable = table[
    {id:1 ,name:"john"},
    {id:2,name:"peter"}

  ];

//table operations

  Employee? e= employeeTable[1];
  // io:println(e.toBalString());

  foreach Employee items in employeeTable {
    // io:println(items);
    
  }


//Langlib functions

//add

employeeTable.add({id:3 , name:"james" });

//update

employeeTable.put({id:3 , name:"james Mario"});
employeeTable.put({id:1 , name:"John Mario"});



//remove

// Employee removed = employeeTable.remove(1);
// io:println(employeeTable);



// ballerina query expresions

                                //SQL

 Employee[] employeeData = from Employee employee in employeeTable
    select employee;
    // io:println(employeeData);


    //where

    Employee[] employeeDatabyId = from Employee employees in employeeTable 
     where employees.id==1
     select employees;

    //  io:println(employeeDatabyId);


                               //XML

     string [] studentName = ["John", "Peter" , "Alex" , "Maya" , "victer"];

      xml xmlvalue = from string names in studentName
      select xml `<name>$(name)</name>`; 

      io:println(xmlvalue);                     









}



