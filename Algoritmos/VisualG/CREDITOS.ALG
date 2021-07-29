Algoritmo "creditos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Rafael Florindo (Unicesumar)
// Descrição   : Calcular o valor que pode ser concecido a clientes! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 16/05/2019
Var
// Seção de Declarações das variáveis 
                saldo:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
               escreva("Informe o Saldo do Correntista: ")
               leia(saldo)
               se(saldo <= 500) entao
               escreva("Credito Indisponivel")
               fimse
               se (saldo >=501) e (saldo <=1000) entao
               escreva("Crédito Disponivel de 35% R$: ", (saldo * 35)/100)
               fimse
               se (saldo >=1001) e (saldo <=3000) entao
               escreva("Crédito Disponivel de 50% R$: ", (saldo * 50)/100)
               fimse
               se (saldo >= 3001) entao
               escreva("Crédito Disponivel de 75% R$: ", (saldo * 75)/100)
               fimse
               //escreva(saldo)

Fimalgoritmo