Algoritmo "calculocarga"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Calcular a carga do caminhao, e c�digo da carga! (fun��o)
// Autor(a)    : Marcio Jose Santana
// Data atual  : 19/05/2019
Var
// Se��o de Declara��es das vari�veis 
           cod_estado,peso,cod_carga :inteiro
           preco_carga,valor_imposto,valor_total:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
           escreva("Qual o C�digo do Estado: ")
           leia(cod_estado)
           escreva("Qual o peso da Carga em tonelads: ")
           leia(peso)
           escreva("Qual o Codigo da Carga: ")
           leia(cod_carga)
           escolha (cod_estado)
                  caso 1
                  se ((cod_carga >=10) e (cod_carga <=20)) entao
                  preco_carga <- peso * 1000 * 180
                  valor_imposto <- peso * 1000 * 180 * 20/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=21) e (cod_carga <=30)) entao
                  preco_carga <- peso * 1000 * 120
                  valor_imposto <- peso *1000 * 120 * 20/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=31) e (cod_carga <= 40)) entao
                  preco_carga <- peso * 1000 * 230
                  valor_imposto <- peso * 1000 * 20/100
                  valor_total <- valor_imposto + preco_carga

                  caso 2
                  se ((cod_carga >=10) e (cod_carga <=20)) entao
                  preco_carga <- peso * 1000 * 180
                  valor_imposto <- peso * 1000 * 180 * 15/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=21) e (cod_carga <=30)) entao
                  preco_carga <- peso * 1000 * 120
                  valor_imposto <- peso * 1000 * 120 * 15/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=31) e (cod_carga <=40)) entao
                  preco_carga <- peso * 1000 * 230
                  valor_imposto <- peso * 1000 * 230 * 15/100
                  valor_total <- valor_imposto + preco_carga

                  caso 3
                  se((cod_carga >=10) e (cod_carga <=20)) entao
                  preco_carga <- peso * 1000 * 180
                  valor_imposto <- peso * 1000 * 180 * 10/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=21) e (cod_carga <=30)) entao
                  preco_carga <- peso * 1000 * 120
                  valor_imposto <- peso * 1000 * 120 * 10/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=31) e (cod_carga <=40)) entao
                  preco_carga <- peso * 1000 * 230
                  valor_imposto <- peso * 1000 * 230 * 10/100
                  valor_total <- valor_imposto + preco_carga

                  caso 4
                  se((cod_carga >=10) e (cod_carga <=20)) entao
                  preco_carga <- peso * 1000 * 180
                  valor_imposto <- peso * 1000 * 180 * 5/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=21) e (cod_carga <=30)) entao
                  preco_carga <- peso * 1000 * 120
                  valor_imposto <- peso * 1000 * 120 * 5/100
                  valor_total <- valor_imposto + preco_carga

                  senao
                  se((cod_carga >=31) e (cod_carga <=40)) entao
                  preco_carga <- peso * 1000 * 230
                  valor_imposto <- peso * 1000 * 230 * 5/100
                  valor_total <- valor_imposto + preco_carga
                  fimescolha
                  escreva(peso,preco_carga,valor_total)
                  fimse

 Fimalgoritmo