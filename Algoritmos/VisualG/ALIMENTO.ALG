Algoritmo "alimento"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rafael Florindo
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : M�rcio Jose santana)
// Data atual  : 21/05/2019
Var
// Se��o de Declara��es das vari�veis 
       codigo:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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