//string template grammar
grammar strTemplate;

csvFile: hdr row+;
hdr: row;

row: field (',' field)* '\r'?'\n';

field: TEXT | STRING ;

TEXT: ~[,\n\r"]+;
STRING : '"'('""'|~'"')*'"';