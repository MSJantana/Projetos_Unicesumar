Algoritmo "mapamatriz"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Messias e Rafael
// Descri��o   : Criar fun��es que preenche todo o tabuleiro! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 03/06/2019
// Vers�o      : 1.05 - Implementa��o de Procedimentos
//--------------------------------------------------------------//
//Mostra o tabuleiro com todos os campos preenchidos
procedimento mostraMatriz ( )
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

   matriz: vetor[1..6,1..6] de caracter
   LMatriz,CMatriz: inteiro
   aluno: caracter
   op: inteiro

Inicio

   escreval("Informe o nome do Aluno")
   escreva("--->")
   leia(aluno)
   escreval("Bem Vindo a Atividade Mapa de ALG 1: " ,aluno,"")
   escreval("")
   repita
      escreval("**********Menu de Op��es**********")
      escreval("|[1] - Mostrar Tabuleiro [x}     |")
      escreval("|[2] - Mostrar Tabuleiro [E][][S]|")
      escreval("|[3] - Sair                      |")
      escreval("**********************************")
      escreval("Escolha a Op��o Desejada: ",aluno)
      escreva("--->")
      leia(op)
      escolha(op)
      caso 1
         mostraMatriz ( )
      caso 2
         preenchertabuleiro ( )
      caso 3
         escreval("Saindo do Programa...")
      fimescolha

   Ate (op = 3)

Fimalgoritmo