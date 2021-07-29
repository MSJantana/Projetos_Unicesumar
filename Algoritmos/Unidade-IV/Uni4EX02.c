#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define max 5

int PopularVetor (int vetorA[max])//Inserir Dados no Vetor
{
	int i,j,troca;
	
	for(i=1; i<= max;i++)
	{
		vetorA[i]=0;
	}
	troca = 0;
	for(i=1;i<=max;i++)
	{
		printf("Digite o %d Elemento: ",i);
		scanf("%d",&vetorA[i]);
	}
	for(i=1;i<=max;i++)
	{
		for(j=1;j<=max;j++)
		{
			if(vetorA[i]>vetorA[j])// Ordena o Vetor em Orderm Decrescente
			{
				troca = vetorA[i];
				vetorA[i]=vetorA[j];
				vetorA[j]=troca;
			}
		}
	}
}
int ImprimirVetor(int vetorA[max])//Função para imprimir o Vetor o
{
	int i;
	for(i=1;i<=max;i++)
	{
		printf("\n%d valor do vetor ordenado: %d",i,vetorA[i]);
	}
}

int main () 
{
	setlocale (LC_ALL, "Portugueses");
	int vetorA[max];
	
	PopularVetor(vetorA);
	ImprimirVetor(vetorA);	
	/*
	for(i=0;i<max;i++)
	{
		printf("Digite o %d Elemento: ",i+1);
		scanf("%d",&vetorA[i]);
	}
	for (i=0;i<=max;i++)
	{
		for(j=i+1;j<=max;j++)
		{
			if (vetorA[i] > vetorA[j])
			{
				troca = vetorA[i];
				vetorA[i]= vetorA[j];
				vetorA[j]= troca;
			}
		}
	}
	printf("\nVETOR ORDENANDO E \n");
	for (i=0;i<=max;i++)
	{
		printf("%d - ", vetorA[i]);
	}*/

	
	return 0;
}
