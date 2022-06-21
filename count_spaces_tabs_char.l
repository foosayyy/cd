%{
#include<stdio.h>
int enters=0, spaces=0,tabs=0,charc=0;
%}
%%
\n enters++;
[ ] spaces++;
\t tabs++;
. charc++;
%%
int yywrap(void){}
void main(){
yylex();
printf("number of enters are %d \n",enters);
printf("number of spaces are %d \n",spaces);
printf("number of tabs are %d \n",tabs);
printf("number of character are %d \n",charc); }
