Algoritmo "notas"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Ler 4 notas e mostrar se o aluno foi aprovado ou reprovado! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 31/05/2019
Var
// Seção de Declarações das variáveis 
   n1,n2,n3,n4,media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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