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
cadastro boletimtemp;
void cabecalho ();
void menu();
void imprimir_notas();
void imprimir_media ();

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
				imprimir_media ();
				break;
				
			case 4 :
				printf("Saindo do Sistema....\n");
				break;
		
			default: printf("Opção Invalida.....\n");	
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
		printf("\n** %s - %0.1f - %0.1f - %0.1f - %0.1f\n",boletim[i].alunos,boletim[i].notas[0],boletim[i].notas[1],boletim[i].notas[2],boletim[i].notas[3],boletim[i].notas[4]);
	}
}

void imprimir_notas( )
{
	printf("\n\n=================Notas e Médias====================\n\n");
	int i,j;
	float soma;
	for(i=0;i<5;i++)
	{
		for(j=0;j<4;j++)
		{
			soma = soma + boletim[i].notas[j];
		}
		boletim[i].notas[4] = soma/4;
		soma = 0;
		printf("\nMédia do Aluno: %s - %0.1f\n",boletim[i].alunos,boletim[i].notas[4]);
		printf("\n** %s - %0.1f - %0.1f - %0.1f - %0.1f\n",boletim[i].alunos,boletim[i].notas[0],boletim[i].notas[1],boletim[i].notas[2],boletim[i].notas[3],boletim[i].notas[4]);
		printf("\n===================================================\n");
	}
}

void imprimir_media ()
{
	printf("\n\n=================Médias Ordenadas===================\n\n");
	int i,j;
	for(i=0;i<5;i++)
	{
		for(j=0;j<4;j++)
		{
			if (boletim[i].notas[4] > boletim[j].notas[4])
			{
				strcpy(boletimtemp.alunos, boletim[i].alunos);
				strcpy(boletim[i].alunos , boletim[j].alunos);
				strcpy(boletim[j].alunos , boletimtemp.alunos);
				
				boletimtemp.notas[0] = boletim[i].notas[0];
				boletim[i].notas[0] = boletim[j].notas[0];
				boletim[j].notas[0] = boletimtemp.notas[0];
				
				boletimtemp.notas[1] = boletim[i].notas[1];
				boletim[i].notas[1] = boletim[j].notas[1];
				boletim[j].notas[1] = boletimtemp.notas[1];
				
				boletimtemp.notas[2] = boletim[i].notas[2];
				boletim[i].notas[2] = boletim[j].notas[2];
				boletim[j].notas[2] = boletimtemp.notas[2];
				
				boletimtemp.notas[3] = boletim[i].notas[3];
				boletim[i].notas[3] = boletim[j].notas[3];
				boletim[j].notas[3] = boletimtemp.notas[3];
				
				boletimtemp.notas[4] = boletim[i].notas[4];
				boletim[i].notas[4] = boletim[j].notas[4];
				boletim[j].notas[4] = boletimtemp.notas[4];
			}
		}
	}
	for(i=0;i<5;i++)
	{
		printf("\n****************************************************");
		printf ("\n\n%s - %0.1f\n", boletim[i].alunos,boletim[i].notas[4]);
		printf ("\n%0.1f - %0.1f - %0.1f - %0.1f",boletim[i].notas[0],boletim[i].notas[1],boletim[i].notas[2],boletim[i].notas[3]);
	}
	printf("\n****************************************************\n");
	printf("\n====================================================\n");	
}

