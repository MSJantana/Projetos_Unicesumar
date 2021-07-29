Algoritmo "contagem"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Criar funções que preenche todo o tabuleiro! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 03/06/2019
Var
// Seção de Declarações das variáveis 
      contador,ninicio,nfim : Inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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