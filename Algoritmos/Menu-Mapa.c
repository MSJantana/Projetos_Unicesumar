/*
2 - Crie um programa em linguagem C, que atenda os seguintes critérios  (1.0 pontos).
a) Declarar duas constantes, sendo LINHA e COLUNA, e armazene os valores 4 e 6 respectivamente. Onde a constante LINHA é 
   responsável pelas semana e a constante COLUNA é responsável pelos dias da semana. -- Ok Feito - 12-06
b) Desenvolver uma função que preencha uma matriz com os valores de venda diários de uma empresa de revenda de automóvel. 
   Esses valores devem ser informados pelo usuário. A dimensão da matriz se dá pelo uso das constantes, LINHA e COLUNA. Ok Feito - 16-06
c) Desenvolver uma função que imprima os valores diários de venda do mês. Ok Feito 17-06
d) Desenvolver uma função que calcule a média de vendas do mês. Ok Feito 17-06
e) Criar um menu que fique repetindo as opções: Preencher Vendas, Exibir as Vendas, Média de Vendas e por fim Sair. -- OK Feito - 13-06
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <conio.h>
#include <locale.h>
#define LIN 4
#define COL 6 

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
	printf("3 - Exibir Média Vendas    \n");
	printf("0 - Sair                   \n");
	printf("*************************\n");
}

// Função que o usuário insere os valores de vendas relativo a cada semana
int vendas (float Auto [LIN][COL]){
	printf("\n\n================= VENDAS =================\n\n");
	int linha,coluna;
	float soma=0;
	//float media=0;
		
    for (linha=0;linha<LIN;linha++)
	{
		for(coluna=0;coluna<COL;coluna++)
		{
			printf(" Semana %d: Dia %d: R$ ",linha+1,coluna+1);
			scanf("%f",&Auto[linha][coluna]);
			soma = soma + Auto[linha][coluna];
			//media = media + Auto[linha][coluna];
		} 
		printf("A Semana %d o Total de Vendas foi de R$: %.2f\n",linha+1,soma);	
		soma=0;
		
	}
		//printf("Media Mes R$: %.2f\n",media/24);
	return(0);
}

//Função onde exibe os valores das vendas por semana
void ExibirVendas (float Auto[LIN][COL]){
	
	printf("\n\n===============Vendas do Mes==============\n\n");
	int linha,coluna;
				
	for (linha=0;linha<LIN;linha++)
	{
		for(coluna=0;coluna<COL;coluna++)
		{
		
			printf(" Semana %d: Dia %d: R$%.2f\n ",linha+1,coluna+1,Auto[linha][coluna]);
						
		} 
		printf("\n==========================================\n");
	}
}

//Função onde é mostrada a média relativa a vendas do mês
void MediaVendas (float Auto[LIN][COL]){
	
	printf("\n\n=================Medias====================\n\n");
	int linha,coluna;
	//float soma=0;
	float media=0;
	
	for(linha=0;linha<LIN;linha++)
	{
		for(coluna=0;coluna<COL;coluna++)
		{
		//printf("A Semana %d o Total de Vendas foi de R$: %.2f\n",linha+1,soma);
		//soma = soma + Auto[linha][coluna];
		media = media + Auto[linha][coluna];	
		}
	}
		printf("Média Mes R$: %.2f\n",media/24);
}
	
 main (){
	
	setlocale(LC_ALL, "Portuguese");
	float Auto[LIN][COL];
	int op=1;
	
    do
    {
    	cabecalho();
		menu();
                
		printf("\nInforme a Opção Desejada: ");
	
        scanf("%d", &op);
        system("cls || clear");

        switch(op)
        {
            case 1:
               vendas(Auto);;
                break;

            case 2:
                ExibirVendas(Auto);
                break;

            case 3:
                MediaVendas(Auto);
                break;

            default:
                printf("Programa Finalizado.....");
        }
    } while(op);


	return 0;	
	
}
		
		

    
	
	
	
	
	
	
	
	
	
	
	


