Algoritmo "AnoBissexto"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Calcular se o Ano e Bissexto! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 30/05/2019
Var
// Se��o de Declara��es das vari�veis 
                ano:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
               escreva("Digite o Ano a Ser Analisado: ")
               leia(ano)
               se ((ano mod 4 = 0) ou (ano mod 400 = 0)) entao
                  escreva("O Ano",ano ," � Bissexto")
                  senao (ano mod 100 <>0 )
                  escreva ("O Ano",ano ," n�o � Bissexto")
                  fimse
 Fimalgoritmo