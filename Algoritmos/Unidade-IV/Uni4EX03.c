#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define MAX 10

int main ()
{
	char palavra[MAX];
	char letra;
	int i;
	
	fflush(stdin);
	printf("Entre com Uma Palavra: ");
	scanf("%s",palavra);
	if (strlen(palavra) %2 == 1) 
	{
		for (i=0;i<MAX;i++)
		{
			letra = palavra[i];
			//printf("%c",letra);
			
			switch (letra)
			{
			case 'a' : printf("%c ", letra);
					   break;
			case 'e' : printf("%c ", letra);
					   break;
			case 'i' : printf("%c ", letra);
					   break;
			case 'o' : printf("%c ", letra);
					   break;
			case 'u' : printf("%c ", letra);
					   break;
			
			}
		}
		
	}

	return 0;
	
}
