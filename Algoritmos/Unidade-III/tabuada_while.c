#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

/*Entrada: Ler Números Inteiros.
Processamento: Apresentar a tabuada do 1 ao 10
Saída: Imprimir a tabuada do 1 ao 10.*/

int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int num;
	printf("Informe o Número: ");
	scanf("%d",&num);
	
	int i = 1;	
	while (i <=10)
	{
		printf("%d x %d = %d\n", num,i,num*i);
		i++;
	}
	
	
	return(0);
	
}
