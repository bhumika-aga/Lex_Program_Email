%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
%%
^[a-zA-Z0-9._-]+@+[a-z]+\.+[a-z]+ { flag=1; }
%%
int main()
{
yylex();
if(flag==1)
printf("Valid Email Address");
else
printf("Invalid Email Address");
}
