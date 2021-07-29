#include <stdio.h>

int main () {
	char palavras[10];
	int repeticoes,i;
	
	printf("Digite uma palavra: ");
	scanf("%s",&palavras);
	printf("Digite o Numero de Repeticao: ");
	scanf("%d",&repeticoes);
	
	for (i=1;i<=repeticoes;i++)
	{
		printf("\n%s",palavras);
	}
	printf("\n");
			
	return 0;
}

