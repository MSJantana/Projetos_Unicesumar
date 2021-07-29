Algoritmo "salario"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/07/2019
Var
   // Seção de Declarações das variáveis
   salario: real
   comissao: real
   matricula: inteiro
   nome: caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Insira a Matricula do Funcionario:")
   leia(matricula)
   escreva("Insira o Nome do Funcionário: ")
   leia(nome)
   escreva("Insira o Salario do Funcionário:")
   leia(salario)
   se (salario < 1500) entao
      comissao <- salario + (salario*0.02)
   senao
      comissao <- salario + (salario*0.04)
   fimse
   escreval("Nome do Vendendor é: ",nome)
   escreval("Sua Matricula é: ",matricula)
   escreval("Seu Salario Fixo é R$ ",salario)
   escreval("O seu novo Salario será de R$",comissao)


Fimalgoritmo