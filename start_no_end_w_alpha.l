%{
#include<stdio.h>
%}
%%
[0-9]+[a-z|A-Z|0-9]*[a-z|A-Z]* {printf("valid string");}
.* {printf("invalid string");}
%%
int yywrap(void){}
void main(){
yylex();
}
