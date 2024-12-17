grammar Translation;

text :'hello' ID ;        // match keyword hello followed by an identifier


ID: [ a-zA-Z]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;