Algoritmo "vetorABC"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2019
Var
   // Seção de Declarações das variáveis
   VetA,VetB,VetC: vetor [1..5] de inteiro
   numero: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   para numero de 1 ate 5 passo 1 faca
      escreva("Informe os Numeros do Vetor A : ")
      leia(VetA[numero])
   fimpara
   para numero de 1 ate 5 passo 1 faca
      escreva("Informe os Numeros do Vetor B: ")
      leia(VetB[numero])
   fimpara
   escreval("Calculado so valores da soma dos Vetores A e B")
   para numero de 1 ate 5 passo 1 faca
      VetC[numero] <- VetA[numero] + VetB[numero]
   fimpara
   escreval("Os Valores do Vetor C é: ")
   para numero de 1 ate 5 passo 1 faca
        escreval(numero, ")", VetC[numero])
   fimpara

Fimalgoritmo