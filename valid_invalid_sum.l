%{
#include<stdio.h>
int count1=0;
int count2=0;
%}
%%
[a-z|A-Z|_][a-z|A-Z|0-9]* count1++;
.* count2++;
%%
int yywrap(void){}
void main(){
yylex();
printf("valid identifier are %d \n",count1);
printf("invalid identifier are %d \n",count2);
}
