%{
%}
DIGITO               [0-9]
PALAVRA              [a-zA-Z]
ESPACO               " "
INTEIRO              "int"

%%
{INTEIRO} printf("Voce escreveu um inteiro: \"%s\"\n", yytext);
{DIGITO}   printf("Voce escrever um digito: \"%s\"\n", yytext);
{PALAVRA} printf("Voce escreveu uma palavra: \"%s\"\n", yytext);
{ESPACO} printf("Voce escreveu uma espaco: \"%s\"\n", yytext);

.	   printf("Nao reconheceu: \"%s\"\n", yytext);
%%
int main(int argc, char *argv[])
{
  if(argc < 2)
  {
    printf("Missing input file\n");
    exit(-1);
  }
  yyin = fopen(argv[1], "r");
  yylex();
}
