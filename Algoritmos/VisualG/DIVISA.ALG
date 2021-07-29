Algoritmo "divisa"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Informar se o numero inteiro e divisivel por 3 e por 7 (função)
// Autor(a)    : Marcio Jose Santana
// Data atual  : 15/05/2019
Var
// Seção de Declarações das variáveis 
                  num:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
                  escreva("Digite um Número Inteiro: ")
                  leia(num)
                  se(num MOD 3 = 0) E (num MOD 7 = 0)entao
                         escreva("O Número " , num , " e Divisivel por 3 e por 7")
                  senao
                         escreva("O Número " , num , " NAO e Divisivel por 3 e por 7")
                   fimse

Fimalgoritmo