Algoritmo "diagonal"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/07/2019
procedimento diagonal ()
var
   j:vetor[1..4,1..4] de inteiro
   k,l:inteiro

inicio

   para k de 1 ate 4 passo 1 faca
      para l de 1 ate 4 passo 1 faca
         escreva("Insira o elemento", k , l," da Matriz: ")
         leia(j[k,l])
      fimpara
   fimpara
   para k de 1 ate 4 passo 1 faca
      para l de 1 ate 4  passo 1 faca
         escreva(j[k,l]:4)
      fimpara
      escreval( )
   fimpara
   escreval("")
   escreval("Diagonal")
   para k de 1 ate 4 passo 1 faca
      para l de 1 ate 4 passo 1 faca
         se (k=l) entao
            escreva(j[k,l]:4)
         senao
            escreva(" ":4)
         fimse
      fimpara
      escreval("")
   fimpara
fimprocedimento


Var
   // Seção de Declarações das variáveis
   m:vetor[1..4,1..4] de inteiro
   i,j: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   para i de 1 ate 4 passo 1 faca
      para j de 1 ate 4 passo 1 faca
         escreva("Insira o elemento", i , j," da Matriz: ")
         leia(m[i,j])
      fimpara
   fimpara
   para i de 1 ate 4 passo 1 faca
      para j de 1 ate 4  passo 1 faca
         escreva(m[i,j]:4)
      fimpara
      escreval(" ")
   fimpara

   diagonal()

Fimalgoritmo