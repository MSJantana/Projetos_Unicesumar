Algoritmo "pesoideal"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rafael Florindo (Unicesumar)
// Descri��o   : Calcule e imprima o peso ideal de uma pessoa ! (Condicional Composta)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 15/05/2019
Var
// Se��o de Declara��es das vari�veis
           sexo:caractere
           altura,peso_ideal:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
            escreva("Qual � o sexo [M/F]: ")
            leia(sexo)
            escreva("Qual � a sua altura: ")
            leia(altura)
                 se(sexo = "M") entao
                       peso_ideal <- (72,7*altura)- 58
                 senao //(sexo = 'F') entao
                       peso_ideal <- (62,1*altura)- 44,7
            fimse
escreva("Seu peso ideal �: ", peso_ideal)

Fimalgoritmo