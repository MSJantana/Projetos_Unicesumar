#include <stdlib.h>
#include <stdio.h>
#include <locale.h>


int main ()

{
	float soma;
	int i;
	
	for (i=200; i<=500;i++)
	{
		if (i % 2 == 1 )
		soma = soma + i;
	}
	printf("\nA soma de todos os impares entre 200 e 500 e %.0f",soma);
	

	return(0);
}
