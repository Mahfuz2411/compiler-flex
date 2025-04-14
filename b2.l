%{
#include <stdio.h>    
%}

WORD   [a-zA-Z]

%%
{WORD}+  {printf("Word: %s\n", yytext);}
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}