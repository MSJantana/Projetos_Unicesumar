Algoritmo "leituravalor"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Fazer Leitura de um Valor Fornecido Pelo Usuário! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 29/05/2019
Var
// Seção de Declarações das variáveis 
         numero : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
          escreva("Digite um Valor: ")
          leia(numero)
          se ((numero >=1) e (numero <=9)) entao
             escreva("O Valor está na faixa Permitida")
             senao
             escreva("O Valor está fora da faixa Permitida")
             fimse

Fimalgoritmo