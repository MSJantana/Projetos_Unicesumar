/*Faça um programa que efetua a leitura dos nomes de 5 alunos e também de suas
quatro notas bimestrais. Calcule a média de cada aluno e apresente os nomes
classificados em ordem crescente de média.*/

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <conio.h>


typedef struct cadastro
{
	char alunos[20];
	float notas[5];
}cadastro;

cadastro boletim[5];
void cabecalho ();
void menu();
void imprimir_notas();

int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int op;
	
	do 
	{
		cabecalho ();
		menu();
		printf("Informe a Opção Desejada: ");
		scanf("%d",&op);
		switch(op)
		{
			case 1:
				system ("cls"); 
				notas_alunos ();
				break;
				
			case 2 :
				system ("cls");
				imprimir_notas();
				break;
				
			case 3 :
				system ("cls");
				printf("Função Não Implementada!!!!\n!");
				break;
				
			case 4 :
				system ("cls");
				printf("Saindo do Sistema....\n");
				break;
				
				
			default: printf("Opção Invalida!!!!!!........\n");
			
		}
			
	}while (op!=4);

	return 0;
}

//*****************Monta o Menu de Acesso*******************************
void cabecalho ()
{
	int i;
	for(i=0;i<40;i++)
		printf("*");
	printf("\n\tNotas da Classe M'arcius\n");
	for(i=0;i<40;i++)
		printf("*");
}
void menu()
{
	printf("\n****************************************\n");
	printf("1 - Cadastrar Notas\n");
	printf("2 - Imprimir Notas dos Alunos\n");
	printf("3 - Imprimir Médias dos Alunos\n");
	printf("4 - Sair");
	printf("\n****************************************\n");	
}
//*********************************************************************

int notas_alunos ( )
{
	int i,j;
	for(i=0;i<5;i++)
	{
		printf("Informe o %dº nome do Aluno: ",i+1);
		fflush(stdin);
		scanf("%s",boletim[i].alunos);
		for(j=0;j<4;j++)
		{
			printf("Informe a %dª nota: ",j+1);
			scanf("%f",&boletim[i].notas[j]);
		}
	}
}

void imprimir_notas( )
{
	printf("\n\n=================Notas====================\n\n");
	int i,j;
	float soma;
	for(i=0;i<5;i++)
	{
		for(j=0;j<4;j++)
		{
			//soma = soma + boletim[i].notas;
			printf("\n** %s - %0.1f",boletim[i].alunos,boletim[i].notas[j]);
		}
		//soma=0;
		printf("\n==========================================\n");
	}
}


