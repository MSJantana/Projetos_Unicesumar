Algoritmo "semnome"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2019
Var
// Se��o de Declara��es das vari�veis 
        carro,velocidade,excessoVelocidade : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

        escreva("digite: ")
        leia(carro)
        carro<-1
enquanto (carro<=10) faca
    leia(velocidade)
    se (velocidade > 100) entao
        excessoVelocidade<- execessoVelocidade+1
    fimse
    carro<-carro+1
fimenquanto

Fimalgoritmo