%{
#include <stdio.h>    
%}

NUM [0-9]

%%
{NUM}    { printf("DIGIT  : %s\n", yytext); }
{NUM}+   { printf("Number : %s\n", yytext); }
.        { printf("Unknown Character: %s\n", yytext);    }
%%


int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}