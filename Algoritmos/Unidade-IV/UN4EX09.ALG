Algoritmo "UN4EX09"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Messias e Rafael
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Marcio Jose Santana
// Data atual  : 02/07/2019
tipo
   cad_prof = registro
      matricula:inteiro
      nome:caracter
      formacao:caracter
      salario:real
   fimregistro

Var
   // Seção de Declarações das variáveis
   prof: vetor[1..5] de cad_prof
   n1,n2,op,matricula,achou,contador:inteiro
   temp: cad_prof
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("1 - Cadastro de Professores")
      escreval("2 - Imprima o Nome do Professor por order de salário")
      escreval("3 - Pesquisar Professor pela matricula")
      escreval("4 - Sair do Programa")
      escreva("-->")
      leia(op)
      //1 - Cadastrar Professor
      se (op = 1) entao
         escreval("Opção Escolhida: 1 - Cadastrar de Professores")
         escreval("Iniciando o Sistema...")
         para n1 de 1 ate 5 passo 1 faca
            escreva("Digite a Matricula do Professor: ")
            leia(prof[n1].matricula)
            escreva("Digite o Nome do Professor: ")
            leia(prof[n1].nome)
            escreva("Digite a Formação: ")
            leia(prof[n1].formacao)
            escreva("Informe o Salário do Professor:R$ ")
            leia(prof[n1].salario)
         fimpara
      fimse
      //2 - Imprimir o nome do Professor por order de salário
      se (op = 2) entao
         escreval("Opção Escolhida: 2 - Imprima o Nome do Professor por order de salário")
         para n1 de 1 ate 5 passo 1 faca
            para n2 de n1+1 ate 5 passo 1 faca
               se (prof[n1].salario > prof[n2].salario) entao
                  temp.matricula <- prof[n1].matricula
                  temp.nome <- prof[n1].nome
                  temp.formacao <- prof[n1].formacao
                  temp.salario <- prof[n1].salario
                  prof[n1].matricula <- prof[n2].matricula
                  prof[n1].nome <- prof[n2].nome
                  prof[n1].formacao <- prof[n2].formacao
                  prof[n1].salario <- prof[n2].salario
                  prof[n2].matricula <- temp.matricula
                  prof[n2].nome <- temp.nome
                  prof[n2].formacao <- temp.formacao
                  prof[n2].salario <- temp.salario
               fimse
            fimpara
         fimpara
         escreval("--------------------------------")
         para n1 de 1 ate 5 passo 1 faca
            escreval("Matricula: ",prof[n1].matricula)
            escreval("Nome: ",prof[n1].nome)
            escreval("Formação: ",prof[n1].formacao)
            escreval("Salário R$:",prof[n1].salario)
            escreval("--------------------------------")
         fimpara
      fimse
      //3 - Pesquisar professor por matricula
      se (op = 3) entao
         escreval("Opção Escolhida: 3 - Pesquisar Professor pela Matricula")
         escreval("Digite a matricula para pesquisar")
         leia(matricula)
         achou <- 0
         contador <- 1
         Enquanto ((achou = 0) ou (contador <= 5)) faca
            se (matricula = prof[contador].matricula) entao
               achou <- 1
               contador <- contador + 1
            fimse
            contador <- contador + 1
         fimenquanto
         se (achou = 0) entao
            escreva("Matricula Não Encontrada")
         senão
            escreva("Matricula = ", prof[contador].matricula)
            escreva("Nome = ", prof[contador].nome)
            escreva("Formação = ", prof[contador].formacao)
            escreva("Salario = ", prof[contador].salario)
         fimse
      fimse
   ate(op=4)

Fimalgoritmo