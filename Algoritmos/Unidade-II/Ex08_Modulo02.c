/*Lógica de Programacao II - Exercicio 08 - Elabore um programa que informe o total de calorias a partir de uma escolha do usuário*/
#include <stdio.h>
#include <locale.h>
int main ()
{
	setlocale(LC_ALL, "Portuguese");
	
	int cod;
	float caloria;
	//caloria = 0;
	
	printf("\n1 - Italiano");
	printf("\n2 - Japones");
	printf("\n3 - Salvadorenho");
	
	printf("\nInforme o Prato Tipico da Região: ");
	scanf("%d",&cod);
	
	switch(cod)
	{
		case 1 :
			caloria = caloria + 750;
			break;
		case 2 :
			caloria = caloria + 324;
			break;
		case 3 :
			caloria = caloria + 545;
			break;	
	
	}
	 printf("\n1 - Chá");
	 printf("\n2 - Suco de Laranja");
	 printf("\n3 - Refrigerante");
	 printf("\nInforme a Bebida Desejada: ");
	 scanf("%d",&cod);
	 
	 switch(cod)
	 {
	 	case 1 :
	 		caloria = caloria + 30;
	 		break;
	 	case 2 :
	 		caloria = caloria + 80;
	 		break;
	 	case 3 :
	 		caloria = caloria + 90;
	 		break;
	}
	
	 
	 printf("Valor da Caloria %.2f",caloria);	
	
			
	
	return (0);
	
}
	
