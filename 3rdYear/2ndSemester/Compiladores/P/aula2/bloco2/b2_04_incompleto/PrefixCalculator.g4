grammar PrefixCalculator;

program:
        stat* EOF
        ;

stat:   expr? NEWLINE
        ;

expr: 
        op = ('*'|'/'|'%') expr expr #ExprMultiDivMod
    |   op = ('+'|'-') expr expr     #ExprAddSub
    |   Integer                      #ExprInteger
    |   '(' expr ')'                 #ExprParent
    ;

Integer: [0-9]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;