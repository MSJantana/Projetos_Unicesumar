Algoritmo "supercontador"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Gustavo Guanabara
// Descri��o   : Algoritmo para criar um contador atraves de menus.! (fun��o)
// Autor(a)    : M�rcio Jose Santana
// Data atual  : 03/06/2019
Var
// Se��o de Declara��es das vari�veis 
     op, num: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
       escreval("=====================")
       escreval("|      MENU         |")
       escreval("=====================")
       escreval("|[1] - De 1 at� 10  |")
       escreval("|[2] - De 10 at� 1  |")
       escreval("|[3] - N�meros Pares|")
       escreval("|[4] - SAIR         |")
       escreval("=====================")
       leia(op)
       escolha (op)
       //Caso 1 - Estrutura de Repeti��o enquanto...fimenquanto (While)
       caso 1
            num <- 1
            enquanto (num <= 10) faca
             escreva(num,"...")
             num <- num + 1
             fimenquanto
       //Caso 2 - Estrtura de Repeti��o repita...ate (Do While)
       caso 2
            num <- 10
            repita
            escreva(num, "...")
            num <- num - 1
            ate (num < 1)
        //Caso 3 - Estrutura de Repeti��o para..fimpara (For)
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
