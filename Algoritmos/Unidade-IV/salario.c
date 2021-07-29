#include <stdio.h>


int main (){
	
	float salario;
	float vendas;
	float comissao;
	float salarioAtual;
	char nome[10];
	int i;
	
	for (i=0;i<2;i++)
	{
		printf("Informe o Nome do Vendendor: ");
		scanf("%s",nome);
		printf("Informe o Salario do Vendedor: ");
		scanf("%f",&salario);
		printf("Informe o valor de Vendas: ");
		scanf("%f",&vendas);
		comissao = vendas * 0.3;
		salarioAtual = salario + comissao;
	}
			
	for(i=0;i<2;i++)
	{
		//printf("********************************");
		printf("\nNome: %s",nome);
		printf("\nSalario: %.2f",salario);
		printf("\nVendas do Mes: %.2f", vendas);
		printf("\nSalario Atual: %.2f",salarioAtual);
		printf("\n");
		printf("********************************");
	}
	printf("\n");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	return 0;
}
