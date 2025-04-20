%{
#include <stdio.h>
int num=0;
int wrd=0;

%}

WORD  [a-zA-Z]
NUM   [0-9]

%%
{WORD}+   {wrd++;}
{NUM}+    {num++;}
[ ]       {}
[\n]      {printf("Integers = %d\nWord = %d\n", num, wrd);}

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}