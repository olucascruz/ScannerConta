# ScannerConta
 
Como compilar:

o arquivo scanner.lex:

"flex -o scanner.lex.c scanner.lex"
<br>
"gcc -o scanner scanner.lex.c -lfl"

o arquivo scannerToken.lex:

"flex -o scannerToken.lex.c scanner.lex"
<br>
"gcc -o scannerToken scannerToken.lex.c -lfl"

como rodar:

"/.scanner conta.txt"
<br>
"/.scannerToken conta.txt"

