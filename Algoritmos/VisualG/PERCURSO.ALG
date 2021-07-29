Algoritmo "percurso"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rafael Florindo (Unicesumar)
// Descrição   : Criar um algoritmo que estima o consumo em Km ! (Estrutuda de Decisao Multipla)
// Autor(a)    : Márcio José Santana
// Data atual  : 16/05/2019
Var
// Seção de Declarações das variáveis 
               consumo,Km:real
               moto:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
             escreva("O consumo estimnado de combustivel é: ", consumo)

Fimalgoritmo