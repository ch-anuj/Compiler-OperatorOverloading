%{
#include <iostream>
#include<string>
#include <map>
using namespace std;


void error(string s){
	cout<<"error! ";
	cout<<s<<"in line "<<yylineno<<endl;
}
map<string,string> mapping;
char q = '"';

%}



EQUALS "="
PLUS "+"
MINUS "-"
MULTIPLY "*"
DIVIDE "/"
EQEQ "=="
NEQ "!="
G_THAN ">"
L_THAN "<"
G_EQ ">="
L_EQ "<="
AND "&&"
OR "||"
NOT "!"
IF if
O_BRAC "("
C_BRAC ")"
Obrac "["
Cbrac "]"
OPEN_BRAC "{"
CLOSE_BRAC "}"
SEMICOLON ";"
COLON ":"
DOT "."
AMPERSAN "&"
PRECENT "%"
BACKSLASH \\
ELSE else
WHILE while
SCAN scanf
PRINT printf
INT int
CHAR char
FLOAT float
FOR for
GOTO goto
SWITCH switch
VOID void
BREAK break
CASE case
CONTINUE continue
RETURN return
COMMA	[,]
LETTER	[a-zA-Z_]
NUMBER	[0-9]
INTEGER [0-9]+
FLOATING_INT {INTEGER}{DOT}{INTEGER}
IDENTIFIER {LETTER}({LETTER}|{NUMBER})*
NEWLINE \n
WSPACE	[ \t]+
OTHERS .



%option noyywrap
%option yylineno


%%

{EQUALS}	{cout<<"<font color="<<q<<mapping["EQUALS"]<<q<<">"<<yytext<<"</font>"<<endl;}
{PLUS}		{cout<<"<font color="<<q<<mapping["PLUS"]<<q<<">"<<yytext<<"</font>"<<endl;}
{MINUS}		{cout<<"<font color="<<q<<mapping["MINUS"]<<q<<">"<<yytext<<"</font>"<<endl;}
{MULTIPLY}	{cout<<"<font color="<<q<<mapping["MULTIPLY"]<<q<<">"<<yytext<<"</font>"<<endl;}
{DIVIDE}	{cout<<"<font color="<<q<<mapping["DIVIDE"]<<q<<">"<<yytext<<"</font>"<<endl;}
{EQEQ}		{cout<<"<font color="<<q<<mapping["EQEQ"]<<q<<">"<<yytext<<"</font>"<<endl;}
{NEQ}		{cout<<"<font color="<<q<<mapping["NEQ"]<<q<<">"<<yytext<<"</font>"<<endl;}
{G_THAN}	{cout<<"<font color="<<q<<mapping["G_THAN"]<<q<<">"<<yytext<<"</font>"<<endl;}
{L_THAN}	{cout<<"<font color="<<q<<mapping["L_THAN"]<<q<<">"<<yytext<<"</font>"<<endl;}
{G_EQ}		{cout<<"<font color="<<q<<mapping["G_EQ"]<<q<<">"<<yytext<<"</font>"<<endl;}
{L_EQ}		{cout<<"<font color="<<q<<mapping["L_EQ"]<<q<<">"<<yytext<<"</font>"<<endl;}
{AND}		{cout<<"<font color="<<q<<mapping["AND"]<<q<<">"<<yytext<<"</font>"<<endl;}
{OR}		{cout<<"<font color="<<q<<mapping["OR"]<<q<<">"<<yytext<<"</font>"<<endl;}
{NOT}		{cout<<"<font color="<<q<<mapping["NOT"]<<q<<">"<<yytext<<"</font>"<<endl;}
{IF}		{cout<<"<font color="<<q<<mapping["IF"]<<q<<">"<<yytext<<"</font>"<<endl;}
{O_BRAC}	{cout<<"<font color="<<q<<mapping["O_BRAC"]<<q<<">"<<yytext<<"</font>"<<endl;}
{C_BRAC}	{cout<<"<font color="<<q<<mapping["C_BRAC"]<<q<<">"<<yytext<<"</font>"<<endl;}
{Obrac}		{cout<<"<font color="<<q<<mapping["Obrac"]<<q<<">"<<yytext<<"</font>"<<endl;}
{Cbrac}		{cout<<"<font color="<<q<<mapping["Cbrac"]<<q<<">"<<yytext<<"</font>"<<endl;}
{OPEN_BRAC}	{cout<<"<font color="<<q<<mapping["OPEN_BRAC"]<<q<<">"<<yytext<<"</font>"<<endl;}
{CLOSE_BRAC}	{cout<<"<font color="<<q<<mapping["CLOSE_BRAC"]<<q<<">"<<yytext<<"</font>"<<endl;}
{SEMICOLON}	{cout<<"<font color="<<q<<mapping["SEMICOLON"]<<q<<">"<<yytext<<"</font>"<<endl;}
{COLON}		{cout<<"<font color="<<q<<mapping["COLON"]<<q<<">"<<yytext<<"</font>"<<endl;}
{AMPERSAN}	{cout<<"<font color="<<q<<mapping["AMPERSAN"]<<q<<">"<<yytext<<"</font>"<<endl;}
{PRECENT}	{cout<<"<font color="<<q<<mapping["PRECENT"]<<q<<">"<<yytext<<"</font>"<<endl;}
{BACKSLASH}	{cout<<"<font color="<<q<<mapping["BACKSLASH"]<<q<<">"<<yytext<<"</font>"<<endl;}
{ELSE}		{cout<<"<font color="<<q<<mapping["ELSE"]<<q<<">"<<yytext<<"</font>"<<endl;}
{WHILE}		{cout<<"<font color="<<q<<mapping["WHILE"]<<q<<">"<<yytext<<"</font>"<<endl;}
{SCAN}		{cout<<"<font color="<<q<<mapping["SCAN"]<<q<<">"<<yytext<<"</font>"<<endl;}
{PRINT}		{cout<<"<font color="<<q<<mapping["PRINT"]<<q<<">"<<yytext<<"</font>"<<endl;}
{INT}		{cout<<"<font color="<<q<<mapping["INT"]<<q<<">"<<yytext<<"</font>"<<endl;}
{CHAR}		{cout<<"<font color="<<q<<mapping["CHAR"]<<q<<">"<<yytext<<"</font>"<<endl;}
{FLOAT}		{cout<<"<font color="<<q<<mapping["FLOAT"]<<q<<">"<<yytext<<"</font>"<<endl;}
{FOR}		{cout<<"<font color="<<q<<mapping["FOR"]<<q<<">"<<yytext<<"</font>"<<endl;}
{GOTO}		{cout<<"<font color="<<q<<mapping["GOTO"]<<q<<">"<<yytext<<"</font>"<<endl;}
{SWITCH}	{cout<<"<font color="<<q<<mapping["SWITCH"]<<q<<">"<<yytext<<"</font>"<<endl;}
{VOID}		{cout<<"<font color="<<q<<mapping["VOID"]<<q<<">"<<yytext<<"</font>"<<endl;}
{BREAK}		{cout<<"<font color="<<q<<mapping["BREAK"]<<q<<">"<<yytext<<"</font>"<<endl;}
{CASE}		{cout<<"<font color="<<q<<mapping["CASE"]<<q<<">"<<yytext<<"</font>"<<endl;}
{CONTINUE}	{cout<<"<font color="<<q<<mapping["CONTINUE"]<<q<<">"<<yytext<<"</font>"<<endl;}
{RETURN} 	{cout<<"<font color="<<q<<mapping["RETURN"]<<q<<">"<<yytext<<"</font>"<<endl;}
{COMMA}		{cout<<"<font color="<<q<<mapping["COMMA"]<<q<<">"<<yytext<<"</font>"<<endl;}
{INTEGER}	{cout<<"<font color="<<q<<mapping["INTEGER"]<<q<<">"<<yytext<<"</font>"<<endl;}
{FLOATING_INT}	{cout<<"<font color="<<q<<mapping["FLOATING_INT"]<<q<<">"<<yytext<<"</font>"<<endl;}
{IDENTIFIER}	{cout<<"<font color="<<q<<mapping["IDENTIFIER"]<<q<<">"<<yytext<<"</font>"<<endl;}
{WSPACE}		{cout<<"<font color="<<q<<mapping["WSPACE"]<<q<<">"<<yytext<<"</font>"<<endl;}
{NEWLINE}	{cout<<"<font color="<<q<<mapping["NEWLINE"]<<q<<">"<<"<br>"<<"</font>"<<endl;}
{OTHERS}	{cout<<"<font color="<<q<<mapping["OTHERS"]<<q<<">"<<yytext<<"</font>"<<endl;}


%%
int main(int argc, char *argv[]) {
	int i;

	char token[15];
	char color[15];
	string str1,str2;
	FILE * fpCFG;
	FILE * fpIN;
	FILE * fpOUT;

	fpIN = fopen(argv[2], "r");
	fpOUT = freopen(argv[3], "w", stdout);

	if( argc == 4  )
	 {
		yyin = fpIN;
		yyout = fpOUT;
		fpCFG = fopen(argv[1], "r");
		for(i=0;i<48;i++){
				fscanf(fpCFG, "%s %s ", token, color);
				str1=string(token);
				str2 = string(color);
				mapping [str1] = str2;
				}
	   fclose(fpCFG);
	 	 cout<<"<!DOCTYPE html>\n<html>\n<body>\n";
	 	 cout<<"</body>\n</html>";
	 }
	 else {
		 cout << "ERROR: Any one CFG/INPUT/OUTPUT file missing."<< '\n';
	 }

	 yylex();

	return 0;
}
