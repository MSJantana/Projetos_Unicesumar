Algoritmo "creditos"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Rafael Florindo (Unicesumar)
// Descri��o   : Calcular o valor que pode ser concecido a clientes! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 16/05/2019
Var
// Se��o de Declara��es das vari�veis 
                saldo:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
               escreva("Informe o Saldo do Correntista: ")
               leia(saldo)
               se(saldo <= 500) entao
               escreva("Credito Indisponivel")
               fimse
               se (saldo >=501) e (saldo <=1000) entao
               escreva("Cr�dito Disponivel de 35% R$: ", (saldo * 35)/100)
               fimse
               se (saldo >=1001) e (saldo <=3000) entao
               escreva("Cr�dito Disponivel de 50% R$: ", (saldo * 50)/100)
               fimse
               se (saldo >= 3001) entao
               escreva("Cr�dito Disponivel de 75% R$: ", (saldo * 75)/100)
               fimse
               //escreva(saldo)

Fimalgoritmo