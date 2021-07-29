Algoritmo "pesoideal"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rafael Florindo (Unicesumar)
// Descrição   : Calcule e imprima o peso ideal de uma pessoa ! (Condicional Composta)
// Autor(a)    : Márcio José Santana
// Data atual  : 15/05/2019
Var
// Seção de Declarações das variáveis
           sexo:caractere
           altura,peso_ideal:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
            escreva("Qual é o sexo [M/F]: ")
            leia(sexo)
            escreva("Qual é a sua altura: ")
            leia(altura)
                 se(sexo = "M") entao
                       peso_ideal <- (72,7*altura)- 58
                 senao //(sexo = 'F') entao
                       peso_ideal <- (62,1*altura)- 44,7
            fimse
escreva("Seu peso ideal é: ", peso_ideal)

Fimalgoritmo