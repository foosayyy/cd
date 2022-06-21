%{
#include<stdio.h>
%}
%%
for[(].*[)] {fprintf(yyout,"for loop detected");}
.* {fprintf(yyout,"for loop not detected");}
%%
int yywrap(void){}
int main()
{
extern FILE* yyin, *yyout;
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
}
