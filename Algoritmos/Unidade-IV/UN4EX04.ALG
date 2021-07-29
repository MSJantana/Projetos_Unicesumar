Algoritmo "Un4ex04"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2019
Var
   // Seção de Declarações das variáveis
   Mat: vetor [1..5,1..5] de inteiro
   num1,num2: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Entre com o valores da Matriz 5X5")
   para num1 de 1 ate 5 passo 1 faca
      para num2 de 1 ate 5 passo 1 faca
         escreva("Digite o ",num1," X",num2,":")
         leia(Mat[num1,num2])
      fimpara
   fimpara
   escreval("Mostrar a Matriz Completa")
   para num1 de 1 ate 5 passo 1 faca
      para num2 de 1 ate 5 passo 1 faca
         escreva(Mat[num1,num2])
      fimpara
      escreval(" ")
   fimpara
   escreval("Os valores da diagonal da matriz ",num1,"X",num2," são:" )
   para num1 de 1 ate 5 passo 1 faca
      escreval("Posição ", num1,"X",num1," = " , Mat[num1,num1])
   fimpara

Fimalgoritmo