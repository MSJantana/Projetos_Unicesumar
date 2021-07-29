Algoritmo "anonascimento"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Messias e Rafael
// Descrição   : Ler o Ano de Nascimento de uma Pessoa e mostrar a sua idade! (função)
// Autor(a)    : Márcio José Santana
// Data atual  : 31/05/2019
Var
// Seção de Declarações das variáveis 
   idade,ano: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Digite o Ano de Nascimento: ")
   leia(ano)
   idade <- (2019-ano)
   se ((idade >= 16) e (idade <=17)) entao
   escreva("Já tem Idade para Votar")
   senao se (idade >=18) entao
   escreva("Ja Tem Idade para Ter Carteira de Habilitação")
   fimse
   //fimse
   

Fimalgoritmo