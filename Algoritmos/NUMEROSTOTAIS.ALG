Algoritmo "numerostotais"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Fa�a um algoritmo que receba 2 numeros e fa�a (Soma/Subtra��o/Divs�o/Multiplica��o (fun��o)
// Autor(a)    : M�rcio Jose Santana
// Data atual  : 01/06/2019
Var
// Se��o de Declara��es das vari�veis 
   n1,n2 : real
   soma,subt,divisao,mult : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
       escreva("Digite o Primeiro N�mero: ")
       leia(n1)
       escreva("Digite o Segundo N�mero: ")
       leia(n2)
       soma <- n1+n2
       subt <- n1-n2
       divisao <- n1/n2
       mult <- n1*n2
       escreval("A soma dos n�mero �: ",soma)
       escreval("A Subtra��o dos n�meros �: ",subt)
       escreval("A Divis�o dos N�meros �: ",divisao)
       escreval("A Multiplica��o dos N�meros �: ",mult)

Fimalgoritmo