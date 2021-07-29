Algoritmo "mapamatriz"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Messias e Rafael
// Descrição   : Criar funções que preenche todo o tabuleiro! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 03/06/2019
// Versão      : 1.04 - Implementação de Procedimentos
//--------------------------------------------------------------//
//Mostra o tabuleiro com todos os campos vazios
procedimento mostraMatriz ( )
Inicio
   para LMatriz de 1 ate 6 faca
      para CMatriz de 1 ate 6 faca
         matriz[LMatriz,CMatriz] <- "[ ]"
         escreva(matriz[LMatriz,CMatriz])
      fimpara
      escreval(" ")
   fimpara
FimProcedimento

//Mostrar Tabuleiro com todos os campos preenchidos
procedimento mostraMatrizX ( )
Inicio
   para LMatriz de 1 ate 6 faca
      para CMatriz de 1 ate 6 faca
         matriz[LMatriz,CMatriz] <- "[X]"
         escreva(matriz[LMatriz,CMatriz])
      fimpara
      escreval(" ")
   fimpara
FimProcedimento

//mostrar tabuleiro com parametros desenhados
procedimento preenchertabuleiro ( )
inicio
   para LMatriz de 1 ate 6 faca
      para CMatriz de 1 ate 6 faca
         matriz[LMatriz,CMatriz] <- "[X]"
         matriz[5,1]<- "[E]"
         matriz[5,2]<- "   "
         matriz[5,5]<- "   "
         matriz[5,6]<- "[S]"
         matriz[4,2]<- "   "
         matriz[4,5]<- "   "
         matriz[3,2]<- "   "
         matriz[3,3]<- "   "
         matriz[3,5]<- "   "
         matriz[2,3]<- "   "
         matriz[2,4]<- "   "
         matriz[2,5]<- "   "
         escreva(matriz[LMatriz,CMatriz])
      fimpara
      escreval(" ")
   fimpara
fimprocedimento
var

   LMatriz,CMatriz: inteiro
   matriz: vetor[1..6,1..6] de caracter
   aluno: caracter
   op: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("Informe o nome do Aluno")
   escreva("--->")
   leia(aluno)
   escreval("Bem Vindo a Atividade Mapa de ALG 1: " ,aluno,"")
   escreval("")
   repita
      escreval("**********Menu de Opções**********")
      escreval("|[1] - Mostrar Tabuleiro [ }     |")
      escreval("|[2] - Mostrar Tabuleiro [X]     |")
      escreval("|[3] - Mostrar Tabuleiro [E][][S]|")
      escreval("|[4] - Sair                      |")
      escreval("**********************************")
      escreval("Escolha a Opção Desejada: ",aluno)
      escreva("--->")
      leia(op)
      escolha(op)
      caso 1
         mostraMatriz ( )
      caso 2
         mostraMatrizX ( )
      caso 3
         preenchertabuleiro ( )
      caso 4
         escreval("Saindo do Programa...")
      fimescolha

     Ate (op = 4)

Fimalgoritmo