Algoritmo "salario"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/07/2019
Var
   // Se��o de Declara��es das vari�veis
   salario: real
   comissao: real
   matricula: inteiro
   nome: caracter

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva("Insira a Matricula do Funcionario:")
   leia(matricula)
   escreva("Insira o Nome do Funcion�rio: ")
   leia(nome)
   escreva("Insira o Salario do Funcion�rio:")
   leia(salario)
   se (salario < 1500) entao
      comissao <- salario + (salario*0.02)
   senao
      comissao <- salario + (salario*0.04)
   fimse
   escreval("Nome do Vendendor �: ",nome)
   escreval("Sua Matricula �: ",matricula)
   escreval("Seu Salario Fixo � R$ ",salario)
   escreval("O seu novo Salario ser� de R$",comissao)


Fimalgoritmo