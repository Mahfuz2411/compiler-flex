%{
#include <stdio.h>    
%}

%%
[0-9]+                             { printf("NUMBER: %s\n", yytext); }
[0-9]+[a-zA-Z_][a-zA-Z0-9_]*       { printf("Invalid IDENTIFIER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*             { printf("IDENTIFIER: %s\n", yytext); }

"+"                                { printf("PLUS\n"); }
"-"                                { printf("MINUS\n"); }
"*"                                { printf("MULTIPLY\n"); }
"/"                                { printf("DIVIDE\n"); }
"=="                               { printf("ASSIGN\n"); }
"="                                { printf("EQUALS\n"); }

[ \t\n]+                           { /* skip whitespace */ }

.                                  { printf("Unknown: %s\n", yytext); }
%%


int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}