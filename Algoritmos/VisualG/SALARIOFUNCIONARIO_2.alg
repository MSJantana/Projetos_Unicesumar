Algoritmo "salariofuncionario"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Joao Messias
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 18/05/2019
Var
// Seção de Declarações das variáveis 
             codigo:inteiro
             cargo: caracter
             salario,aumento:real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

            escreva("Digite o Codigo do Cargo: ")
            leia(codigo)
            escreva("Informe o Valor do Salario: ")
            leia(salario)

           se(codigo = 1) entao
           escreval ("1 - Servente")
                     aumento <- salario * 40/100
                     salario <- salario + aumento
                     escreval("Salario Atual será de R$: ", salario)
                     escreval("Seu Valor de Reajuste será de R$: ", aumento)
           fimse
           se (codigo = 2) entao
           escreval ("2 - Pedreiro")
                    aumento <- salario * 35/100
                    salario <- salario + aumento
                    escreval("Salario Atual será de R$: ",salario)
                    escreval("Seu valor de Reajuste será de R$: ", aumento)
           fimse
           se(codigo = 3) entao
           escreval ("3 - Mestre de Obras")
                    aumento <- salario * 20/100
                    salario <- salario + aumento
                    escreval("Salario Atual será de R$: ",salario)
                    escreval("Seu valor de Reajuste será de R$: ",aumento)
           fimse
           se(codigo = 4) entao
           escreval ("4 - Técnico de Segurança")
                    aumento <- salario * 10/100
                    salario <- salario + aumento
                    escreval("Salario Atual será de R$: ",salario)
                    escreval("Seu valor de Reajuste será de R$: ", aumento)
           fimse
Fimalgoritmo
