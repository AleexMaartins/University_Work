grammar Hello ;                 // Define a grammar called Hello
greetings : 'hello' ID ;        // match keyword hello followed by an identifier
goodbyes : 'xauxau' ID ;        // match keyword goodbye followed by an identifier
ID : [a-z]+ ;                   // match lower-case identifiers
WS : [ \t\r\n]+ -> skip ;       // skip spaces, tabs, newlines, \r (Windows)