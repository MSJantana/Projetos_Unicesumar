#include <stdio.h>
#include <stdlib.h>

int main ()

{
	int k,l,i,j,min,max, intervalo;
	//criar matriz do tamanho informado pelo usuário
	printf("Informe o tamanho da Matriz: ");
	scanf("%i%i", &k,&l);
	int Matriz[k][l];
	
	//preencher a matriz com um intervalor informado pelo usuário
	printf("Defina o Intervalo: ");
	scanf("%i%i",&min,&max);
	while(max <= min)
	{
		printf("Intervalo Invalido. Digite novos valores: ");
		scanf("%i%i",&min,&max);
	}
	intervalo = max - min;
	printf("Intervalo: %i \n",intervalo);
	
	for(i=0;i<k;i++)
	{
		for(j=0;j<l; j++)
		{
			Matriz[i][j] = rand()%intervalo+min;
		}
	}
	for(i=0;i<k;i++)
	{
		for(j=0;j<l;j++)
		{
			printf("\t %i",Matriz[i][j]);
		}
		printf("\n");
	}	
		
	return 0;
}
