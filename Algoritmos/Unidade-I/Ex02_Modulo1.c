 /*Lógica de Programacao II - Exercicio 02 - Achar Quadrado e Raiz Quadrada de Um Número*/
#include <stdio.h>
#include <stdlib.h>
#include <math.h> /* Necessário para fazer os calculos matematicos*/
main ()
{/*Declaracao de variaves*/
	float n,rquad,quad;
	
/*Entrada de Dados*/
	printf("Digite um numero: ");
	scanf("%f", &n);

/*Processamento dos Dados*/
	quad = pow(n,2); /*Calculo para achar o valor de n ao quadrado*/
	rquad = sqrt(n); /*Calculo para achar a Raiz Quadrada de n*/	
	printf("O Quadrado de %.2f e %.2f\n" ,n, quad);
	printf("A Raiz Quadrada de %.2f e %.2f" , n, rquad);
		
	return(0);
}

