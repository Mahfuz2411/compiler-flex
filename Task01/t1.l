%{
#include <stdio.h>
int cap=0;
int sml=0;

char arrCap[20];
char arrSml[20];

%}



%%
[a-z]   {arrSml[sml]=yytext[0]; sml++;}
[A-Z]   {arrCap[cap]=yytext[0]; cap++;}
[\n]    {
    int i=0;
    printf("Small Characters: ");
    for(i=0; i<sml; i++) {
        printf("%c ", arrSml[i]);
    }
    printf("\n");

    printf("Capital Characters: ");
    for(i=0; i<cap; i++) {
        printf("%c ", arrCap[i]);
    }
    printf("\n");
}

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}