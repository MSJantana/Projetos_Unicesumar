Algoritmo "recebenumero"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Digitar um número se ele for negativo Armazene em A, negativo em B! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 30/05/2019
Var
// Seção de Declarações das variáveis 
           A,B,numero: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
           escreva("Digite um número: ")
           leia(numero)
           se (numero >= 0)entao
              A <-numero
              escreva("O Número Digitado é positivo:",A)
           senao (numero <= 0)entao
              B <- numero
              escreva("O Número Digitado é Negativo:",B)
              fimse
Fimalgoritmo