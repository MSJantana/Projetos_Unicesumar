Algoritmo "salariofuncionario"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Joao Messias
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 18/05/2019
Var
// Se��o de Declara��es das vari�veis 
             codigo:inteiro
             cargo: caracter
             salario,aumento:real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

            escreva("Digite o Codigo do Cargo: ")
            leia(codigo)
            escreva("Informe o Valor do Salario: ")
            leia(salario)

           se(codigo = 1) entao
           escreval ("1 - Servente")
                     aumento <- salario * 40/100
                     salario <- salario + aumento
                     escreval("Salario Atual ser� de R$: ", salario)
                     escreval("Seu Valor de Reajuste ser� de R$: ", aumento)
           fimse
           se (codigo = 2) entao
           escreval ("2 - Pedreiro")
                    aumento <- salario * 35/100
                    salario <- salario + aumento
                    escreval("Salario Atual ser� de R$: ",salario)
                    escreval("Seu valor de Reajuste ser� de R$: ", aumento)
           fimse
           se(codigo = 3) entao
           escreval ("3 - Mestre de Obras")
                    aumento <- salario * 20/100
                    salario <- salario + aumento
                    escreval("Salario Atual ser� de R$: ",salario)
                    escreval("Seu valor de Reajuste ser� de R$: ",aumento)
           fimse
           se(codigo = 4) entao
           escreval ("4 - T�cnico de Seguran�a")
                    aumento <- salario * 10/100
                    salario <- salario + aumento
                    escreval("Salario Atual ser� de R$: ",salario)
                    escreval("Seu valor de Reajuste ser� de R$: ", aumento)
           fimse
Fimalgoritmo
