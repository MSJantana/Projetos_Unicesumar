Algoritmo "escolherpessoas"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Algoritmo para ler Sexo, Idade e Cor de Cabelo de diversas pessoas
// e ao final, mostrar! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 03/06/2019
Var
// Se��o de Declara��es das vari�veis 
     idade,cabelo,PH18,PM2530: inteiro
     sexo,op: caracter
     

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   repita
   limpatela
      escreval("============================")
      escreval("      SELETOR DE PESSOAS    ")
      escreval("============================")
      escreva("Qual o Sexo [M/F?] ")
      leia(sexo)
      escreva("Qual a idade? ")
      leia(idade)
      escreva("Qual a Cor do Cabelo? ")
      leia(cabelo)
      escreval("----------------------------")
      escreval("[1] Preto   ")
      escreval("[2] Castanho")
      escreval("[3] Loiro   ")
      escreval("[4] Ruivo   ")
      se (sexo = "M") e (idade > 18) e (cabelo = 2) entao
         PH18<- PH18 + 1
         fimse
         se (sexo = "F") e (idade >=25) e (idade <=30) e (cabelo = 3) entao
         PM2530 <- PM2530 + 1
         fimse
   escreval("Deseja Cadastrar outra pessoa ? [S/N]")
   leia(op)
   ate (op = "N")
   limpatela
   escreval("--------------------------------")
   escreval("     PROCESSANDO OS DADOS       ")
   escreval("--------------------------------")
   escreval("Total de HOMENS com mais de 18 Anos e cabelos CASTANHOS � :",PH18)
   escreval("Total de MULHERES entre 25 e 30 Anos e cabelos LOIROS �: ",PM2530)


Fimalgoritmo


