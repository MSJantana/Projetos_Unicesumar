Algoritmo "leituravalor"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Messias e Rafael
// Descri��o   : Fazer Leitura de um Valor Fornecido Pelo Usu�rio! (fun��o)
// Autor(a)    : M�rcio Jos� Santana
// Data atual  : 29/05/2019
Var
// Se��o de Declara��es das vari�veis 
         numero : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
          escreva("Digite um Valor: ")
          leia(numero)
          se ((numero >=1) e (numero <=9)) entao
             escreva("O Valor est� na faixa Permitida")
             senao
             escreva("O Valor est� fora da faixa Permitida")
             fimse

Fimalgoritmo