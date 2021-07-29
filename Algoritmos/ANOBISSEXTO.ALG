Algoritmo "AnoBissexto"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Calcular se o Ano e Bissexto! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 30/05/2019
Var
// Seção de Declarações das variáveis 
                ano:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
               escreva("Digite o Ano a Ser Analisado: ")
               leia(ano)
               se ((ano mod 4 = 0) ou (ano mod 400 = 0)) entao
                  escreva("O Ano",ano ," é Bissexto")
                  senao (ano mod 100 <>0 )
                  escreva ("O Ano",ano ," não é Bissexto")
                  fimse
 Fimalgoritmo