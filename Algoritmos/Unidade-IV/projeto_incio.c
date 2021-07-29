#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <conio.h>


void cabecalho();
void menu();

int main ()
{
	setlocale(LC_ALL, "Portuguese");
		
	int op;
	do 
	{
		cabecalho();
		menu();
		printf("Informe a Opção Desejada: ");
		scanf("%d",&op);
		switch(op)
		{
			case 1 : 
				system ("cls");
				break;
			
			case 5:
				printf("Saindo do Programa.....\n");
				break;
			
			default : printf("Opção Invalida...\n");
		}

	
		
	}while(op!=5);
	
	
	
	
}


//*****************Monta o Menu de Acesso*******************************
void cabecalho ()
{
	int i;
	for(i=0;i<40;i++)
		printf("*");
	printf("\n\tMatriz Diagonal M'arcius\n");
	for(i=0;i<40;i++)
		printf("*");
}
void menu()
{
	printf("\n****************************************\n");
	printf("1 - Matriz Preenchida\n");
	printf("2 - Matriz Preenchida Par = 0\n");
	printf("3 - Matriz Preenchida Impar = 1\n");
	printf("4 - Matriz Diagonal\n");
	printf("5 - Sair");
	printf("\n****************************************\n");	
}

void matrix_preenchida()
{
	
	
	
	
}
