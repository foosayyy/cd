%{
#include<stdio.h>
%}
%%
printf[(].*[)] {fprintf(yyout,"printf detected");}
scanf[(].*[)] {fprintf(yyout,"scanf detected");}
.* {fprintf(yyout,"not detected");}
%%
int yywrap(void){}
int main()
{
extern FILE* yyin, *yyout;
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
}
