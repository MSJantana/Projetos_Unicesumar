Algoritmo "numerosnegativos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rafael Florindo (Unicesumar)
// Descrição   : Ler 5 números e mostrar quantos numeros sao negativos! (Condicional Aninhada)
// Autor(a)    : Márcio José Santana
// Data atual  : 15/05/2019
Var
// Seção de Declarações das variáveis 
                      n1,n2,n3,n4,n5,qtdade:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
                    escreva("Digite o Primeiro Número: ")
                    leia(n1)
                    escreva("Digite o Segundo Número: ")
                    leia(n2)
                    escreva("Digite o Terceiro Número: ")
                    leia(n3)
                    escreva("Digite o Quarto Número: ")
                    leia(n4)
                    escreva("Digite o Quinto Número: ")
                    leia(n5)
                    se(n1<0) entao
                    qtdade <- qtdade+1
                    fimse
                    se(n2<0) entao
                    qtdade <- qtdade+1
                    fimse
                    se (n3<0) entao
                    qtdade <- qtdade+1
                    fimse
                    se (n4<0) entao
                    qtdade <- qtdade+1
                    fimse
                    se (n5<0) entao
                    qtdade <- qtade+1
                    fimse

                    
escreva("A quantidade de números negativo é :", qtdade)

Fimalgoritmo