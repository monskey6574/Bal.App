//unit testing

import ballerina/test;

@test:Config{}

function testfahrenheittoCel(){
  test:assertEquals(0.0 ,fahrenheittoCel(32.0));
}