Algoritmo "UN4EX07"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Messias e Rafael
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : M�rcio Jose Santana
// Data atual  : 02/07/2019
Var
   // Se��o de Declara��es das vari�veis
   cpagar: vetor[1..12,1..4] de real
   n1,n2: inteiro
   mensal: vetor [1..12] de real
   total: real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Informe os Valores")
   para n1 de 1 ate 12 passo 1 faca
      para n2 de 1 ate 4 passo 1 faca
         escreva("Digite o valor do M�s",n1 , " Semana",n2," R$:")
         leia(cpagar[n1,n2])
         mensal[n1] <- mensal[n1] + cpagar[n1,n2]
      fimpara
      total <- total + mensal[n1]
   fimpara
   para n1 de 1 ate 12 passo 1 faca
      escreval("O total a pagar no mes �", n1 , " foi de R$",mensal[n1])
   fimpara
   escreva("o Total a pagar anual foi de R$",total)

Fimalgoritmo