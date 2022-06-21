%{
#include<stdio.h>
int vv=0,inv=0;
%}
%%
[a-z|A-Z|_][a-z|A-Z|0-9]* {vv++;}
.* {inv++;}
%%
int yywrap(){
return 1;}
int main(){
extern FILE *yyin,*yyout; 
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
fprintf(yyout,"\n valid identifiers are=%d\n",vv);
fprintf(yyout,"\n invalid identifiers are=%d\n",inv);
return 0;}
