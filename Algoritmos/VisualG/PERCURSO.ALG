Algoritmo "percurso"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rafael Florindo (Unicesumar)
// Descri��o   : Criar um algoritmo que estima o consumo em Km ! (Estrutuda de Decisao Multipla)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 16/05/2019
Var
// Se��o de Declara��es das vari�veis 
               consumo,Km:real
               moto:caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
             escreva("Informe o Tipo de moto [A/B/C]:")
             leia(moto)
             escreva("Percurso Percorrido Pela Moto: ")
             leia(km)
             caso(moto)
                       seja "A" faca
                            consumo = km/26
             caso(moto)
                       seja "B" faca
                            consumo = km/10
             caso(moto)
                       seja "C" faca
                            consumo = km/7
             fimescolha
             escreva("O consumo estimnado de combustivel �: ", consumo)

Fimalgoritmo