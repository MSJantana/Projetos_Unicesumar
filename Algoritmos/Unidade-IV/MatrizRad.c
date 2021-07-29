#include <iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

const int NUM=100;
int main()
{
	cout << "\n\nPrograma para gerar numeros aleatorios";

	//declaração das variáveis
	int vetor[NUM], i=0, j=0, cont_linha=0;

	//inicializando função randômica
	srand(time(NULL));

	//preenchendo o vetor de 100 posições
	for(i=0; i<NUM; i++)
	{
		vetor[i] = (rand()%NUM)+1;

		//verificando se o número já existe, afim de evitar elementos repetidos

		for(j=0; j<i; j++)
		{
			if(vetor[j] == vetor[i])
			{
				vetor[i] = (rand()%NUM)+1;
				j=0;
			}
		}
	}

	cout << "\n\n";

	for(i=0; i<NUM; i++)
	{
		cout << vetor[i] << " ";
		cont_linha++;

		if(cont_linha == 10)
		{
			cout << "\n";
			cont_linha=0;
		}
	}
}
