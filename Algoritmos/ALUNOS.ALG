Algoritmo "alunos"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/06/2019

Var
// Se��o de Declara��es das vari�veis
       aluno,melhorAluno: caracter
       nota,maior: real
       q,cont: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
      escreval("---------------------")
      escreval("ESCOLA SANTA MARIA")
      escreval("---------------------")
      escreva("Quantos Alunos tem na Turma: ")
      leia(q)
      cont <- 1
      enquanto (cont <= q) faca
                 escreval("ALUNO",cont)
                 escreval("---------------------")
                 escreva("Nome do Aluno: ")
                 leia(aluno)
                 escreva("Nota de ",aluno, ":")
                 leia(nota)
                 se (nota > maior)entao
                     maior <- nota
                     melhorAluno <- aluno
                     fimse
                 cont <- cont + 1
                 fimenquanto
                 escreval("----------------------------")
                 escreval  ("A maior nota foi de ",melhorAluno," com a nota", maior)

Fimalgoritmo