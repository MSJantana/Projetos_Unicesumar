/*L�gica de Programacao II - Exercicio 06 - Elabore um programa que receba o nome e a idade de uma pessoa e informa o valor do plano de sa�de*/
#include <stdio.h>
#include <locale.h>
int main ()
{
	setlocale(LC_ALL, "Portuguese");
	char nome[30];
	int idade;
	
	printf("Escreva seu Nome: ");
	scanf("%s", nome);
	printf("Escreva sua idade: ");
	scanf("%d", &idade);
	
	if (idade <= 18)
	{
		printf("\nO Nome do Usu�rio do Plano �: %s ",nome);
		printf("\nA sua idade � de: %d ",idade);
		printf("\nO Valor da Mensalidade � de R$ 50,00");
	}
	else {
		if(idade >= 19 && idade <= 29)
		{
			printf("\nO Nome do Usu�rio do Plano �: %s ",nome);
			printf("\nA sua Idade � de: %d ",idade);
			printf("\nO Valor da Mensalidade � de R$ 70,00");
		}
		else {
			if(idade >= 30 && idade <= 45)
			{
				printf("\nO Nome do Usu�rio do Plano �: %s ",nome);
				printf("\nA sua Idade � de: %d",idade);
				printf("\nO Valor da Mensalidade � de R$ 90,00");
			}
			else {
				if(idade >= 46 && idade <= 65)
			{
					printf("\nO Nome do Usu�rio do Plano �: %s ",nome);
					printf("\nA sua Idade � de: %d",idade);
					printf("\nO Valor da Mensalidade � de R$ 130,00");
			}
				else
				{
					printf("\nO Nome do Usu�rio do Plano �: %s ",nome);
					printf("\nA sua Idade � de :%d",idade);
					printf("\nO Valor da Mensalidade � de R$ 170,00");	
				}
			
			}
		}
	}
	
	
	return (0);
}
