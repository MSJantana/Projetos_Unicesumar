Algoritmo "gastoautomovel"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Calcular o gasto de um automovel!! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 01/06/2019
Var
// Seção de Declarações das variáveis 
       c_medio,dist_total,c_gasto: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
         escreva("Escreva a distancia total a percorrer: ")
         leia(dist_total)
         escreva("Digite o total de Combustivel Gastos: ")
         leia(c_gasto)
         c_medio <- dist_total/c_gasto
         escreva("Total de Combustivel Gasto foi de: ",c_medio)

Fimalgoritmo