%{
#include<stdio.h>
%}
%%
[a-z|A-Z|_][a-z|A-Z|0-9]* {printf("valid identifier");}
.* {printf("invalid identifier");}
%%
int yywrap(void){}
void main(){
yylex();
}
