Algoritmo "divisa"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Informar se o numero inteiro e divisivel por 3 e por 7 (fun��o)
// Autor(a)    : Marcio Jose Santana
// Data atual  : 15/05/2019
Var
// Se��o de Declara��es das vari�veis 
                  num:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
                  escreva("Digite um N�mero Inteiro: ")
                  leia(num)
                  se(num MOD 3 = 0) E (num MOD 7 = 0)entao
                         escreva("O N�mero " , num , " e Divisivel por 3 e por 7")
                  senao
                         escreva("O N�mero " , num , " NAO e Divisivel por 3 e por 7")
                   fimse

Fimalgoritmo