Algoritmo "vetorABC"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2019
Var
   // Se��o de Declara��es das vari�veis
   VetA,VetB,VetC: vetor [1..5] de inteiro
   numero: inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
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
   escreval("Os Valores do Vetor C �: ")
   para numero de 1 ate 5 passo 1 faca
        escreval(numero, ")", VetC[numero])
   fimpara

Fimalgoritmo