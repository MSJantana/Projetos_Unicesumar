#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <locale.h>

/*Entrada: Ler Números Inteiros.
Processamento: Apresentar a Média dos valores, o maior número o menor valor e os números pares e impares
Saída: Imprimir, maior valor , menor valor, números pares e impares.*/

int main ()
{
	setlocale(LC_ALL, "Portuguese");
	int pares,impares,menor,maior,numero,soma,quantidade;
	float media;
	soma = 0; pares = 0 ; impares = 0; menor = INT_MAX; maior = 0;
	numero = 1;quantidade = 0;
	
	while (numero !=0)
	{
		printf("Digite um Número: ");
		scanf("%d",&numero);
		if (numero !=0)
			quantidade++;
		soma = soma + numero;
		if (numero % 2 == 0 && numero !=0)
			pares++;
		else if (numero % 2 == 1 && numero !=0)
			impares++;
		if (numero > maior && numero !=0)
			maior = numero;
		if (numero < menor && numero !=0)
			menor = numero;	
	
	}
	media = soma/quantidade;
	printf("\nMedia: %.2f \nMaior: %d \nMenor: %d \nPar: %d \nImpar: %d",media,maior,menor,pares,impares);















	return(0);
}
