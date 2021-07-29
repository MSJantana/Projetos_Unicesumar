/*Lógica de Programacao II - Exercicio 03 - Construa um programa que dado o número inteiro informe o mës correpondente*/
#include <stdio.h>
main()
{/*Declaraçao das Variaves*/
	int num;
	
/*Entrada dos Dados*/
	printf("Digite um numero: ");
	scanf("%d",&num);
	
/*Processamento dos dados*/
	switch(num)
	{
		case 1 : printf("\nJANEIRO\n");
		break;
		case 2 : printf("\nFEVEREIRO\n");
		break;
		case 3 : printf("\nMARCO\n");
		break;
		case 4 : printf("\nABRIL\n");
		break;
		case 5 : printf ("\nMAIO\n");
		break;
		case 6 : printf ("\nJUNHO\n");
		break;
		case 7 : printf ("\nJULHO\n");
		break;
		case 8 : printf ("\nAGOSTO\n");
		break;
		case 9 : printf ("\nSETEMBRO\n");
		break;
		case 10 : printf ("\nOUTUBRO\n");
		break;
		case 11 : printf ("\nNOVEMBRO\n");
		break;
		case 12 : printf ("\nDEZEMBRO\n");
		break;
		default : printf ("\nMES INVALIDO\n");
	}

	return(0);
}
