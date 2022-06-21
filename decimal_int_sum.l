%{
#include<stdio.h>
int countd=0;
int counti=0;
%}
%%
[0-9]+"."[0-9]+ countd++;
[0-9]+ counti++;
%%
int yywrap(void){}
void main(){
yylex();
printf("Number of decimals are %d \n",countd);
printf("Number of integers are %d \n",counti);
}
