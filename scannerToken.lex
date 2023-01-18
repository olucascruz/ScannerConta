%{
%}
DIGITO               [0-9]
PALAVRA              [a-zA-Z]
ESPACO               " "
INTEIRO              "int"
OPERADOR_SOMA         "+"
ATRIBUICAO            "="
SEPARADOR             ";"
NOVAlINHA             "\n"

%%
{ATRIBUICAO}    printf("Voce escreveu uma atribuicao: \"%s\"\n", yytext);
{OPERADOR_SOMA} printf("Voce escreveu um operador de soma: \"%s\"\n", yytext);
{INTEIRO}       printf("Voce escreveu um inteiro: \"%s\"\n", yytext);
{DIGITO}        printf("Voce escrever um digito: \"%s\"\n", yytext);
{PALAVRA}       printf("Voce escreveu uma palavra: \"%s\"\n", yytext);
{SEPARADOR}     printf("Voce escreveu uma separador: \"%s\"\n", yytext);
{ESPACO}        {};
{NOVAlINHA}     {};

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
