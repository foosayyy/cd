%{
#include<stdio.h>
%}
%%
. {fprintf(yyout, "%d\n", yytext[0]);}
%%
int yywrap(void){}
int main(){
extern FILE *yyin, *yyout;
yyin = fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
