Algoritmo "numerosnegativos"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rafael Florindo (Unicesumar)
// Descri��o   : Ler 5 n�meros e mostrar quantos numeros sao negativos! (Condicional Aninhada)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 15/05/2019
Var
// Se��o de Declara��es das vari�veis 
                      n1,n2,n3,n4,n5,qtdade:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
                    escreva("Digite o Primeiro N�mero: ")
                    leia(n1)
                    escreva("Digite o Segundo N�mero: ")
                    leia(n2)
                    escreva("Digite o Terceiro N�mero: ")
                    leia(n3)
                    escreva("Digite o Quarto N�mero: ")
                    leia(n4)
                    escreva("Digite o Quinto N�mero: ")
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

                    
escreva("A quantidade de n�meros negativo � :", qtdade)

Fimalgoritmo