Algoritmo "vetordenumeros"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2019
Var
   // Seção de Declarações das variáveis
   num: vetor [1..5] de inteiro
   i,nume ,menor,maior: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Informe o 1 um número: ")
      leia(nume)
      maior <- nume
      menor <- nume
   para i de 1 ate 5 passo 1 faca
      escreva("Informe um número: ")
      leia(num[i])
   fimpara
   se (num[i] > maior) entao
      maior <- num[i]
   fimse
   se (num[i] < menor) entao
      menor <- num[i]
   fimse

   escreval("O menor numero encontrado foi: ",menor)
   escreval("O maior numero encotrado foi: ",maior)

Fimalgoritmo