Algoritmo "notas"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Ler 4 notas e mostrar se o aluno foi aprovado ou reprovado! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 31/05/2019
Var
// Se��o de Declara��es das vari�veis 
   n1,n2,n3,n4,media : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva("Digite a Primeira Nota: ")
   leia(n1)
   escreva("Digite a Segunda Nota: ")
   leia(n2)
   escreva("Digite a Terceira Nota: ")
   leia(n3)
   escreva("Digite a Quarda Nota: ")
   leia(n4)
   media <- (n1+n2+n3+n4)/4
   se (media >= 7)entao
   escreva("Aprovado Com: ",media)
   senao
   escreva("Reprovado Com: ",media)
   fimse

Fimalgoritmo