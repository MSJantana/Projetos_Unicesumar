Algoritmo "contagem"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Criar fun��es que preenche todo o tabuleiro! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 03/06/2019
Var
// Se��o de Declara��es das vari�veis 
      contador,ninicio,nfim : Inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
      escreval("*************************")
      escreval(   "CONTAGEM INTELIGENTE"  )
      ESCREVAL("*************************")
      escreva("Inicio: ")
      leia(ninicio)
      escreva("Fim: ")
      leia(nfim)
      escreval("--------------------------")
      escreval("  C O N T A D O R   ")
      escreval("--------------------------")
      Se (nfim > ninicio )entao
          contador <- ninicio
          enquanto (contador <= nfim)faca
                   escreva(contador,"...")
                   contador <- contador + 1
          fimenquanto
          senao
          contador <- ninicio
          enquanto (contador >= nfim)faca
                   escreva(contador,"...")
                   contador <- contador - 1
          fimenquanto
      fimse
Fimalgoritmo