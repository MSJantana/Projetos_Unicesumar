Algoritmo "vetordenumeros"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2019
Var
   // Se��o de Declara��es das vari�veis
   num: vetor [1..5] de inteiro
   i,nume ,menor,maior: inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva("Informe o 1 um n�mero: ")
      leia(nume)
      maior <- nume
      menor <- nume
   para i de 1 ate 5 passo 1 faca
      escreva("Informe um n�mero: ")
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