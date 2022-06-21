%{
#include<stdio.h>
int a=0,b=0,c=0,d=0;
%}
%%
\n {a++;}
[ ] {b++;}
\t {c++;}
.* {d++;}
%
int yywrap()
{
return 1;
}
int main()
{
extern FILE *yyin,*yyout; 
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
fprintf(yyout,"\n lines are=%d\n",a);
fprintf(yyout,"\n spaces are=%d\n",b);
fprintf(yyout,"\n Tabs are=%d\n",c);
fprintf(yyout,"\n words are=%d\n",d);
return 0;}
