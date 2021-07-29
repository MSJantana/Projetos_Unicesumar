/*Lógica de Programacao II - Exercicio 05 - Faça um programa que receba o codigo do estado de origem da carga de um caminhao e o peso da carga em tonelaas*/
#include <stdio.h>
#include <locale.h>
int main ()
{
	setlocale(LC_ALL, "Portuguese");
	int cod_estado,peso,cod_carga;
	float preco_carga,valor_imposto,valor_total;
	
	printf("Informe o Código do Estado: ");
	scanf("%d", &cod_estado);
	printf("Informe o Peso da Carga: ");
	scanf("%d", &peso);
	printf("Informe o Código da Carga: ");
	scanf("%d", &cod_carga);
	
	switch (cod_estado)	{
		case 1 :
			if (cod_carga >= 10 && cod_carga <= 20);
		{
			preco_carga = peso * 1000 * 180;
			valor_imposto = (peso * 1000 * 180 * 20) / 100;
			valor_total = preco_carga + valor_imposto;
		}
			if (cod_carga >= 21 && cod_carga <= 30)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 120 * 20 /100;
			valor_total = preco_carga + valor_imposto;	
		}
			if (cod_carga >= 31 &&  cod_carga <= 40)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 230 * 20 /100;
			valor_total = preco_carga + valor_imposto;
		}
		printf("\nO peso da carga é %d",peso*1000);
		printf("\nO preço da carga é %.2f",preco_carga);
		printf("\nO Valor do Imposto é R$ %.2f",valor_imposto);
		printf("\nO Valor Total da Carga é R$ %.2f",valor_total);
		break;
		case 2 :
			if (cod_carga >= 10 && cod_carga <=20);
		{	preco_carga = peso * 1000 * 180;
			valor_imposto = peso * 1000 * 180 * 15 /100;
			valor_total = preco_carga + valor_imposto;
		}	
			if(cod_carga >= 21 && cod_carga <= 30)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso *1000 * 120 * 15 /100;
			valor_total = preco_carga + valor_imposto;
		}
			if(cod_carga >= 31 && cod_carga <= 40)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 230 * 15 /100;
			valor_total = preco_carga + valor_imposto;
		}
		printf("\nO peso da carga é %d",peso*1000);
		printf("\nO preço da carga é %.2f",preco_carga);
		printf("\nO Valor do Imposto é R$ %.2f",valor_imposto);
		printf("\nO Valor Total da Carga é R$ %.2f",valor_total);
		break;	
		case 3 :
			if (cod_carga >= 10 && cod_carga <= 20);
		{
			preco_carga = peso *1000 * 180;
			valor_imposto = peso * 1000 * 180 * 10 /100;
			valor_total = preco_carga + valor_imposto;
		}
			if(cod_carga >= 21 && cod_carga <= 30)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 120 * 10 /100;
			valor_total = preco_carga + valor_imposto;
		}	
			if(cod_carga >= 31 && cod_carga <= 40)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 230 * 10 /100;
			valor_total = preco_carga + valor_imposto;
		}	
		printf("\nO Peso da carga é %d",peso*1000);
		printf("\nO Preço da Carga é R$ %.2f ",preco_carga);
		printf("\nO Valor do Imposto é R$ %.2f ",valor_imposto);
		printf("\nO Valor Total da Carga é R$ %.2f", valor_total);
		break;
		case 4 :
			if (cod_carga >= 10 && cod_carga <= 20);
		{
			preco_carga = peso *1000 * 180;
			valor_imposto = peso * 1000 * 180 * 5 /100;
			valor_total = preco_carga + valor_imposto;
		}
			if(cod_carga >= 21 && cod_carga <= 30)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 120 * 5 /100;
			valor_total = preco_carga + valor_imposto;
		}	
			if(cod_carga >= 31 && cod_carga <= 40)
		{
			preco_carga = peso * 1000 * 100;
			valor_imposto = peso * 1000 * 230 * 5 /100;
			valor_total = preco_carga + valor_imposto;
		}	
		printf("\nO Peso da carga é %d",peso*1000);
		printf("\nO Preço da Carga é R$ %.2f ",preco_carga);
		printf("\nO Valor do Imposto é R$ %.2f ",valor_imposto);
		printf("\nO Valor Total da Carga é R$ %.2f", valor_total);
		break;
		default : printf ("\nOpção Invalida");
	
	}
	
	return (0);
}
