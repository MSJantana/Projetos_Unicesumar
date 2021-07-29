Algoritmo "supercontador"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Gustavo Guanabara
// Descrição   : Algoritmo para criar um contador atraves de menus.! (função)
// Autor(a)    : Márcio Jose Santana
// Data atual  : 03/06/2019
Var
// Seção de Declarações das variáveis 
     op, num: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
       escreval("=====================")
       escreval("|      MENU         |")
       escreval("=====================")
       escreval("|[1] - De 1 até 10  |")
       escreval("|[2] - De 10 até 1  |")
       escreval("|[3] - Números Pares|")
       escreval("|[4] - SAIR         |")
       escreval("=====================")
       leia(op)
       escolha (op)
       //Caso 1 - Estrutura de Repetição enquanto...fimenquanto (While)
       caso 1
            num <- 1
            enquanto (num <= 10) faca
             escreva(num,"...")
             num <- num + 1
             fimenquanto
       //Caso 2 - Estrtura de Repetição repita...ate (Do While)
       caso 2
            num <- 10
            repita
            escreva(num, "...")
            num <- num - 1
            ate (num < 1)
        //Caso 3 - Estrutura de Repetição para..fimpara (For)
       caso 3
           para num de 20 ate 1 passo -2 faca
           escreva(num,"...")
           fimpara
       caso 4
            escreval("SAINDO....")
       caso 5
            escreval("INVALIDO....")
       fimescolha

Fimalgoritmo
