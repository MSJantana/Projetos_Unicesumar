Algoritmo "un4ex03"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2019
tipo
   cad_produto = registro
      nome: caracter
      p_compra: real
      p_venda: real
   fimregistro
Var
   // Se��o de Declara��es das vari�veis
   lucro_maior,lucro_menor,numero: inteiro
   produto: vetor [1..3] de cad_produto

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   para numero de 1 ate 3 passo 1 faca
      escreva("Insira o nome do Produto: ")
      leia(produto[numero].nome)
      escreva("Insira o Valor da Compra R$ ")
      leia(produto[numero].p_compra)
      escreva("Insira o Valor de Venda R$ ")
      leia(produto[numero].p_venda)
      se (((produto[numero].p_venda - produto[numero].p_compra)/ produto[numero].p_compra) < 0.15) entao
         lucro_menor <- lucro_menor + 1
      fimse
      se (((produto[numero].p_venda - produto[numero].p_compra)/ produto[numero].p_compra) > 0.30) entao
         lucro_maior <- lucro_maior + 1
      fimse
   fimpara
   escreval("Existem",lucro_menor," produtos com lucro menor de 15%")
   escreval("Existem",lucro_maior," produtos com lucro maior de 30%")

Fimalgoritmo