%{
#include<stdio.h>
%}
%%
[a-z] {fprintf(yyout,"%c",yytext[0]-32);}
[A-Z] {fprintf(yyout,"%c",yytext[0]+32);}
%%
int yywrap(void){}
int main(){
extern FILE* yyin , *yyout;
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
