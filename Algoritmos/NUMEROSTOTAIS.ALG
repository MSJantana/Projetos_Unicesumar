Algoritmo "numerostotais"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Faça um algoritmo que receba 2 numeros e faça (Soma/Subtração/Divsão/Multiplicação (função)
// Autor(a)    : Márcio Jose Santana
// Data atual  : 01/06/2019
Var
// Seção de Declarações das variáveis 
   n1,n2 : real
   soma,subt,divisao,mult : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
       escreva("Digite o Primeiro Número: ")
       leia(n1)
       escreva("Digite o Segundo Número: ")
       leia(n2)
       soma <- n1+n2
       subt <- n1-n2
       divisao <- n1/n2
       mult <- n1*n2
       escreval("A soma dos número é: ",soma)
       escreval("A Subtração dos números é: ",subt)
       escreval("A Divisão dos Números é: ",divisao)
       escreval("A Multiplicação dos Números é: ",mult)

Fimalgoritmo