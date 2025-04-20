%{
#include <stdio.h>
int num=0;
int wrd=0;

%}

%%
^p.*q$  {printf("Valid\n");}
\n      {/* printf("=========\n");*/} 
.*      {printf("Invalid\n");}
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}