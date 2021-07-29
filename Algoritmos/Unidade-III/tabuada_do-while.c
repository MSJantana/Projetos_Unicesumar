#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int num,resposta;
	int contador = 0;
	
	{
	do
	{
		printf("\nInforme o Número da Tabuada: ");
		scanf("%d",&num);
		for(contador=0;contador<=10;contador++)
	{
		printf("%d x %d = %d\n",num,contador,num*contador);
				
	}
	printf("\n################################");
	printf("\n1 - Fazer Nova Consulta: ");
	printf("\n2 - Sair");
	printf("\n################################");
	printf("\nDigite a opção Desejada: ");
	scanf("%d",&resposta);
	}while (resposta !=2);
	return (0);
	
	}
}
