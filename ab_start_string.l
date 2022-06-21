%{
#include<stdio.h>
%}
%%
[a][b][a-b]*[b][a] {printf("valid string");}
.* {printf("invalid string");}
%%
int yywrap(void){}
void main(){
yylex();
}
