#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main ()
{
	setlocale(LC_ALL, "Portuguese");
	int num,i,fat;
	
	printf("Escreva um N�mero: ");
	scanf("%d",&num);
	
	fat = 1;// inicializacao da variavel 
	for (i = 1; i <=num; i++)
		//fat = fat * i
		fat *= i; //Seria a mesma coisa de fat = fat * i
		printf("Fatorial de %d � : %d",num, fat);//saida na tela dos valores colculados
	
	
	return (0);
}
