Algoritmo "UN4EX05"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Messias e Rafale
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 01/07/2019
tipo
   cad_aluno = registro
      notas: vetor[1..4] de real
      nome:caracter
      media:real
   fimregistro
Var
   // Se��o de Declara��es das vari�veis
   n1,n2: inteiro
   aluno:vetor[1..5] de cad_aluno
   //notas:vetor[1..4] de cad_aluno
   temp: cad_aluno
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Entre com os Dados do Aluno")
   para n1 de 1 ate 5 passo 1 faca
      escreva("Digite o nome do aluno: ")
      leia(aluno[n1].nome)
      para n2 de 1 ate 4 passo 1 faca
         escreva("Digite a nota",n2,":")
         leia(aluno[n1],notas[n2])
         aluno[n1].media <- aluno[n1].media + aluno[n1].notas[n2]
      fimpara
   fimpara



Fimalgoritmo