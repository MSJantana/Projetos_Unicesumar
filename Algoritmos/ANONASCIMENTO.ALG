Algoritmo "anonascimento"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Ler o Ano de Nascimento de uma Pessoa e mostrar a sua idade! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 31/05/2019
Var
// Se��o de Declara��es das vari�veis 
   idade,ano: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva("Digite o Ano de Nascimento: ")
   leia(ano)
   idade <- (2019-ano)
   se ((idade >= 16) e (idade <=17)) entao
   escreva("J� tem Idade para Votar")
   senao se (idade >=18) entao
   escreva("Ja Tem Idade para Ter Carteira de Habilita��o")
   fimse
   //fimse
   

Fimalgoritmo