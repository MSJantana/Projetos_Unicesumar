#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

/*Entrada: Ler N�meros Inteiros.
Processamento: Apresentar a tabuada do 1 ao 10
Sa�da: Imprimir a tabuada do 1 ao 10.*/

int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int num;
	printf("Informe o N�mero: ");
	scanf("%d",&num);
	
	int i = 1;	
	while (i <=10)
	{
		printf("%d x %d = %d\n", num,i,num*i);
		i++;
	}
	
	
	return(0);
	
}
