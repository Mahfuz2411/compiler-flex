%{
#include <stdio.h>    
%}

%%
"+"   {printf("PLUS\n");}  
"-"   {printf("MINUS\n");}  
"*"   {printf("MULTIPLY\n");}  
"/"   {printf("DIVIDE\n");}  
"=="  {printf("ASSIGN\n");}  
"="   {printf("EQUALS\n");}  
.     {printf("Unknown\n");}
%%


int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}