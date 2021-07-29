Algoritmo "ComissaodoVendedor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rafael Florindo (Unicesumar)
// Descrição   : Calcula a comissao do Vendedor! (Condicional Composta)
// Autor(a)    : Márcio José Santana
// Data atual  : 15/05/2019
Var
// Seção de Declarações das variáveis 
                  matricula:inteiro
                  vendedor:caractere
                  sfixo,salariototal,totvendas,tcomissao:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
                    escreva("Numero da Matricula: ")
                    leia(matricula)
                    escreva("Nome do Vendedor: ")
                    leia(vendedor)
                    escreva("Salário Fixo: ")
                    leia(sfixo)
                    escreva("O Total de Vendas hoje foi: ")
                    leia(totvendas)
                    se(totvendas < 1500) entao//e (totvendas > 1500)
                          tcomissao <- (totvendas * 2)/100
                          salariototal <- tcomissao+sfixo

                     senao
                          tcomissao <- (totvendas * 4)/100
                          salariototal <- tcomissao+sfixo
                     fimse
escreva("O ", vendedor , " tem a Matricula ", matricula , " O seu salario fixo é R$ " , sfixo , " O total de Vendas foi R$: ", totvendas , " e sua comissao foi de R$ " , tcomissao , " e seu salario liquido ficou em R$ ", salariototal  )
Fimalgoritmo