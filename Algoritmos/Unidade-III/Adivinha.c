#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <conio.h>
int main ()
{
	setlocale(LC_ALL, "Portuguese");
	char ch = 's';
	char resp;
	char secreto;
	int tentativas;
	
	while (ch == 's')
	{
		secreto = rand () % 26 + 'a';//Resulta no resto da divis�o por 26 (resultado de 0 e 25), e soma a caractere 'a' para gerar uma letra aleatoria
		tentativas = 1;
		printf("\n\nDigite uma letra entre 'a' e 'z: ");
		
		while ((resp=getch()) != secreto)//Sorteia a letra
		{
			printf("%c � incorreto. Tente Novamente\n",resp);
			tentativas++;
		}
		printf("%c � CORRETO!!\n",resp);
		printf("Voc� Acertou em %d tentativas\n", tentativas);
		printf("\nQuer Jogar Novamente? (s/n)");
		ch=getche();
	}	
	printf("\nAt� logo e boa sorte!\n")	;
		
	
	return 0;
}
