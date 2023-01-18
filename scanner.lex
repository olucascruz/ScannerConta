%{
%}
INTEIRO              "int "[a-z]";"
VALORINT             [a-z]" ""="" "[0-9]";"
SOMA                 [a-z]" ""="" "[a-z]" ""+"" "[a-z]";"


%%
{INTEIRO}    printf("Voce escreveu um inteiro: \"%s\"\n", yytext);
{VALORINT}   printf("Voce deu um valor a um inteiro: \"%s\"\n", yytext);
{SOMA}       printf("Voce esta fazendo uma soma: \"%s\"\n", yytext);

.	           printf("Nao reconheceu: \"%s\"\n", yytext);
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
