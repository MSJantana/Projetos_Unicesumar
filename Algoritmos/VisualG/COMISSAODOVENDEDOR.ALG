Algoritmo "ComissaodoVendedor"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rafael Florindo (Unicesumar)
// Descri��o   : Calcula a comissao do Vendedor! (Condicional Composta)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 15/05/2019
Var
// Se��o de Declara��es das vari�veis 
                  matricula:inteiro
                  vendedor:caractere
                  sfixo,salariototal,totvendas,tcomissao:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
                    escreva("Numero da Matricula: ")
                    leia(matricula)
                    escreva("Nome do Vendedor: ")
                    leia(vendedor)
                    escreva("Sal�rio Fixo: ")
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
escreva("O ", vendedor , " tem a Matricula ", matricula , " O seu salario fixo � R$ " , sfixo , " O total de Vendas foi R$: ", totvendas , " e sua comissao foi de R$ " , tcomissao , " e seu salario liquido ficou em R$ ", salariototal  )
Fimalgoritmo