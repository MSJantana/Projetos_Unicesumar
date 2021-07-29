Algoritmo "alunos"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/06/2019

Var
// Seção de Declarações das variáveis
       aluno,melhorAluno: caracter
       nota,maior: real
       q,cont: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
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