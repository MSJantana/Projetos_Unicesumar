#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

/*Entrada: Ler Números Inteiros.
Processamento: Apresentar a tabuada do 1 ao 10
Saída: Imprimir a tabuada do 1 ao 10.*/

int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int  i,mul,j;
	
		for (i=1; i <= 10; i++)
		
	{	printf("Tabuada do %d\n", i);
		for (j=1; j<=10;j++)
		{
			
		mul = i*j;
		printf("%d X %d = %d\n",i,j,mul);
		}
	}	
	return(0);














}
