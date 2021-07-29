#include <stdio.h>
//#include <iostream.h>

struct Pessoa
{
	char nome[30];
	char cpf[12];
	char placa[10];
	char carro[10];
};

main () 
{
	struct Pessoa ficha[3];
	int i;
	
	for (i=0;i<3;i++)
	{
		printf("\nInsira o Nome do Cliente: ");
		scanf("%s", ficha[i].nome);
		printf("\nInsira o CPF do Cliente: ");
		scanf("%s", ficha[i].cpf);
		printf("\nInsira a Placa do Carro do Cliente: ");
		scanf("%s", ficha[i].placa);
		printf("\nInsira a Marca do Carro do Cliente: ");
		scanf("%s", ficha[i].carro);
	}
	
	for (i=0;i<3;i++)
	{
		printf("\nNOme: %s",ficha[i].nome);
		printf("\nCPF: %s",ficha[i].cpf);
		printf("\nPlaca: %s",ficha[i].placa);
		printf("\nMarcado Carro: %s", ficha[i].carro);
	}
	

	
	return 0;
	
}
