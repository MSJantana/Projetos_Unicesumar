/*
2 - Crie um programa em linguagem C, que atenda os seguintes crit�rios  (1.0 pontos).
a) Declarar duas constantes, sendo LINHA e COLUNA, e armazene os valores 4 e 6 respectivamente. Onde a constante LINHA � 
   respons�vel pelas semana e a constante COLUNA � respons�vel pelos dias da semana. -- Ok Feito - 12-06
b) Desenvolver uma fun��o que preencha uma matriz com os valores de venda di�rios de uma empresa de revenda de autom�vel. 
   Esses valores devem ser informados pelo usu�rio. A dimens�o da matriz se d� pelo uso das constantes, LINHA e COLUNA. Ok Feito - 16-06
c) Desenvolver uma fun��o que imprima os valores di�rios de venda do m�s.
d) Desenvolver uma fun��o que calcule a m�dia de vendas do m�s.
e) Criar um menu que fique repetindo as op��es: Preencher Vendas, Exibir as Vendas, M�dia de Vendas e por fim Sair. -- OK Feito - 13-06
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <conio.h>
#define LIN 4
#define COL 6 
/*
void cabecalho(){
	int i;
	for (i=0;i<80;i++)
		printf("*");
	printf("\n*MENU*\n");
	for (i=0;i<80;i++)
		printf("*");
}
void menu(){
	printf("\n*************************\n");
	printf("1 - Preencher Vendas       \n");
	printf("2 - Exibir Vendas          \n");
	printf("3 - Exibir M�dia Vendas    \n");
	printf("4 - Sair                   \n");
	printf("*************************\n");
}

*/
int vendas (float Auto [LIN][COL]){
	printf("\n\n================= VENDAS =================\n\n");
	int linha,coluna;
	float soma=0;
	float media=0;
		
    for (linha=0;linha<LIN;linha++)
	{
		for(coluna=0;coluna<COL;coluna++)
		{
			printf(" Semana %d: Dia %d: R$ ",linha+1,coluna+1);
			scanf("%f",&Auto[linha][coluna]);
			soma = soma + Auto[linha][coluna];
			media = media + Auto[linha][coluna];
		} 
		printf("A Semana %d o Total de Vendas foi de R$: %.2f\n",linha+1,soma);	
		soma=0;
		
	}
		printf("Media Mes R$: %.2f\n",media/24);
	return(0);
}

void ExibirVendas (float Auto[LIN][COL]){
	
	printf("\n\n===============Vendas do Mes==============\n\n");
	int linha,coluna;
	float soma;
			
	for (linha=0;linha<LIN;linha++)
	{
		for(coluna=0;coluna<COL;coluna++)
		{
		
			printf("Semana %d: Dia %d: R$%.2f\n ",linha+1,coluna+1,Auto[linha][coluna]);
						
		} 
		printf("\n==========================================\n");
	}
}
	
 main (){
	
	float Auto[LIN][COL];
		
		
	vendas(Auto);
	
	ExibirVendas(Auto);
	

 


	
	
//	cabecalho();
//	menu();
	return 0;	
	
	
	
	
	
}
		
		
	
	
	
	
	
	
	
	
	
	
	
	


