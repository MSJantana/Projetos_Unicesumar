Algoritmo "UN4EX06"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Messias e Rafael
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Márcio Jose Santana
// Data atual  : 01/07/2019
Var
   // Seção de Declarações das variáveis
   A,B,soma,dif: vetor [1..5,1..5] de inteiro
   I,J : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
         escreva("Informe a posição [",I, J,"] da MatrizA: ")
         leia(A[I,J])
      fimpara
   fimpara
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
         escreva("Informe o posição [",I, J,"] da MatrizB: ")
         leia(B[I,J])
         dif[I,J] <- A[I,J] - B[I,J]
         soma[I,J] <- A[I,J] + B[I,J]
      fimpara
   fimpara
   escreval("A diferença entre as matrizes [",I,"X",J,"]é:")
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
        escreval("Posicao",I,"X",J, dif[I,J])
      fimpara
      //escreval(" ")
   fimpara
   escreval("A soma entre as matrizes [",I,"X",J, "]é: ")
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
        escreval("Posição[",I,"X",J,"]",soma[I,J])
      fimpara
   fimpara
Fimalgoritmo