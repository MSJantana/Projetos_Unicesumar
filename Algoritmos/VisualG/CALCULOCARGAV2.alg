Algoritmo "calculocarga"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Calcular a carga do caminhao, e c�digo da carga! (fun��o)
// Autor(a)    : Marcio Jose Santana
// Data atual  : 19/05/2019
Var
// Se��o de Declara��es das vari�veis 
           cod_estado,vpeso,cod_carga :inteiro
           preco_carga,valor_imposto,valor_total:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
           escreva("Qual o C�digo do Estado: ")
           leia(cod_estado)
           escreva("Qual o peso da Carga em tonelads: ")
           leia(vpeso)
           escreva("Qual o Codigo da Carga: ")
           leia(cod_carga)
           
           se ((cod_carga >=10) e (cod_carga <=20)) entao
               preco_carga <- vpeso * 1000 * 180
               
               senao
                    se ((cod_carga >=21) e (cod_carga <=30)) entao
                    preco_carga <- vpeso * 1000 * 120

                    senao
                    se ((cod_carga >=31) e (cod_carga <= 40))entao
                    preco_carga <- vpeso * 1000 * 230
                    fimse
               fimse
           fimse

               escolha cod_estado
                  caso 1
                  valor_imposto <- vpeso * 1000 * 180 * 20/100
                  //valor_total <- valor_imposto + preco_carga //Calcula o Valor total da carga com impostos
                  caso 2
                  
                  valor_imposto <- vpeso * 1000 * 180 * 15/100
                  //valor_total <- valor_imposto + preco_carga //Calcula o Valor total da carga com impostos

                  caso 3
                  valor_imposto <- vpeso * 1000 * 180 * 10/100
                  //valor_total <- valor_imposto + preco_carga //Calcula o Valor total da carga com impostos

                  caso 4
                  valor_imposto <- vpeso * 1000 * 180 * 5/100
                  //valor_total <- valor_imposto + preco_carga //Calcula o Valor total da carga com impostos
                  fimescolha
                  
                  valor_total <- valor_imposto + preco_carga //Calcula o Valor total da carga com impostos

           escreval("O peso da Carga em toneladas � de: ",vpeso * 1000,"t")
           escreval("O Pre�o da Carga � de R$ ",preco_carga:2:2)
           escreval("O Valor do Imposto cobrado da Carga e de R$ ",valor_imposto:2:2)
           escreval("O Valor total da Carga � de R$ ",valor_total:2:2)

Fimalgoritmo