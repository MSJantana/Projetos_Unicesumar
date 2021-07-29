/*Lógica de Programacao II - Exercicio 07 - Elabore um programa que receba a idade de uma pessoa e identifique sua classe eleitoral*/
#include <stdio.h>
#include <locale.h>
int main ()
{
	setlocale(LC_ALL, "Portuguese");
	int idade;
	
	printf("Digite a Idade: ");
	scanf("%d",&idade);
	
	if (idade < 16)
	{
		printf("Não Eleitor, %d anos ",idade);
	}
	else 
	{
		if(idade < 18 || idade > 65)
		{
			printf("Eleitor Facultativo, %d anos",idade);
		}
		else
		{
			printf("Eleitor Obrigatorio, %d anos,",idade);
		}
	}

	return(0);
}
