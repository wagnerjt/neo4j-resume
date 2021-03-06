// Importing Base Schema
// Run this in Neo4j Browser
CREATE 
  (`0` :Person {firstName:"Jordan",lastName:"Wagner",preferredName:"Tyler"}) ,
  (`1` :Intermediate {start:"05-2017"}) ,
  (`2` :Email {address:"email@email.com"}) ,
  (`3` :Phone {number:"1234567891"}) ,
  (`4` :Company {name:"the boeing company"}) ,
  (`5` :Position {name:"software engineer"}) ,
  (`6` :Skill {name:"containers"}) ,
  (`7` :Tool {name:"neo4j"}) ,
  (`8` :Intermediate {start:"05-2017",end:"10-2017"}) ,
  (`9` :Intermediate {start:"05-2016",end:"08-2016"}) ,
  (`10` :Intermediate {start:"05-2015",end:"08-2015"}) ,
  (`13` :Position {name:"database administrator"}) ,
  (`14` :`LANGUAGE:PROGRAMMING` {name:"react"}) ,
  (`15` :LANGUAGE {name:"english"}) ,
  (`16` :`LANGUAGE:PROGRAMMING` {name:"c#"}) ,
  (`0`)-[:`WORKED` ]->(`1`),
  (`0`)-[:`CONTACT` {type:"email"}]->(`2`),
  (`0`)-[:`CONTACT` {type:"phone"}]->(`3`),
  (`1`)-[:`AT` ]->(`4`),
  (`1`)-[:`POSITION_OF` ]->(`5`),
  (`0`)-[:`KNOWS` {proficiency:'3'}]->(`6`),
  (`0`)-[:`KNOWS` {proficiency:'1'}]->(`7`),
  (`1`)-[:`PREVIOUS` ]->(`8`),
  (`8`)-[:`PREVIOUS` ]->(`9`),
  (`9`)-[:`PREVIOUS` ]->(`10`),
  (`8`)-[:`AT` ]->(`4`),
  (`9`)-[:`AT` ]->(`4`),
  (`10`)-[:`AT` ]->(`4`),
  (`8`)-[:`POSITION_OF` ]->(`5`),
  (`9`)-[:`POSITION_OF` ]->(`5`),
  (`10`)-[:`POSITION_OF` ]->(`13`),
  (`0`)-[:`KNOWS` {proficiency:'8'}]->(`14`),
  (`0`)-[:`KNOWS` {proficiency:'8'}]->(`15`),
  (`0`)-[:`KNOWS` {proficiency:'7'}]->(`16`)