Algoritmo "recebenumero"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Digitar um n�mero se ele for negativo Armazene em A, negativo em B! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 30/05/2019
Var
// Se��o de Declara��es das vari�veis 
           A,B,numero: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
           escreva("Digite um n�mero: ")
           leia(numero)
           se (numero >= 0)entao
              A <-numero
              escreva("O N�mero Digitado � positivo:",A)
           senao (numero <= 0)entao
              B <- numero
              escreva("O N�mero Digitado � Negativo:",B)
              fimse
Fimalgoritmo