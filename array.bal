import ballerina/io;

public function main(){

  string[] names = [];
  names = ["james" , "Sathya" , "janu" , "Amandi"];
  // io:println(names);


  // we canot add more values with*
  string [*] values = ["A" , "B" , "C"];

  // values.push(...vals:"K");


  int lenght = names.length();
    // io:println(names[0] + "  " +lenght.toString());

    
//iterate array
    foreach string name in names{
      // io:println(name);

    }
    //iterate using index

    foreach int index in 0..<names.length(){
      // io:println(names[index]);
    }

    //inbuikd filtre function

    string[] filterednames = names.filter(function (string name) returns boolean {
      return name.startsWith("j");
    });
    io:println(filterednames);



};