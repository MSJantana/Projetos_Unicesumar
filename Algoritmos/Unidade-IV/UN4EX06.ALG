Algoritmo "UN4EX06"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Messias e Rafael
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : M�rcio Jose Santana
// Data atual  : 01/07/2019
Var
   // Se��o de Declara��es das vari�veis
   A,B,soma,dif: vetor [1..5,1..5] de inteiro
   I,J : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
         escreva("Informe a posi��o [",I, J,"] da MatrizA: ")
         leia(A[I,J])
      fimpara
   fimpara
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
         escreva("Informe o posi��o [",I, J,"] da MatrizB: ")
         leia(B[I,J])
         dif[I,J] <- A[I,J] - B[I,J]
         soma[I,J] <- A[I,J] + B[I,J]
      fimpara
   fimpara
   escreval("A diferen�a entre as matrizes [",I,"X",J,"]�:")
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
        escreval("Posicao",I,"X",J, dif[I,J])
      fimpara
      //escreval(" ")
   fimpara
   escreval("A soma entre as matrizes [",I,"X",J, "]�: ")
   para I de 1 ate 5 passo 1 faca
      para J de 1 ate 5 passo 1 faca
        escreval("Posi��o[",I,"X",J,"]",soma[I,J])
      fimpara
   fimpara
Fimalgoritmo