Algoritmo "alimento"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rafael Florindo
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Márcio Jose santana)
// Data atual  : 21/05/2019
Var
// Seção de Declarações das variáveis 
       codigo:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval("1 - Alimento Nao Perecivel")
   escreval("2,3,4 - Alimento Perecivel")
   escreval("5 , 6 - Vestuario")
   escreval("7 - Higiene Pessoal")
   escreva("Entre com o codigo: ")
   leia(codigo)

   escolha (codigo)
        caso 1
             escreval ("1 - Alimento Nao Perecivel")
        caso 2,3,4
             escreval ("2,3,4 - Alimento Perecivel")
        caso 5,6
             escreval ("5 , 6 - Vestuario")
        caso 7
             escreval ("7 - Higiene Pessoal")
        outrocaso
             escreval("Invalido")
   fimescolha

Fimalgoritmo