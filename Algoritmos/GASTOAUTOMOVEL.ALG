Algoritmo "gastoautomovel"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Calcular o gasto de um automovel!! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 01/06/2019
Var
// Se��o de Declara��es das vari�veis 
       c_medio,dist_total,c_gasto: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
         escreva("Escreva a distancia total a percorrer: ")
         leia(dist_total)
         escreva("Digite o total de Combustivel Gastos: ")
         leia(c_gasto)
         c_medio <- dist_total/c_gasto
         escreva("Total de Combustivel Gasto foi de: ",c_medio)

Fimalgoritmo