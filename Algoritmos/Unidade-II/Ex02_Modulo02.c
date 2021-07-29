 /*Lógica de Programacao II - Exercicio 02 - Faça um programa que leia um número e informe se ele e divisivel por 3 e por 7*/
 #include <stdio.h>
 main ()
{/*Declaraçao de variaves*/
	int num;

/*Entrada dos Dados*/
	printf("Digite um numero: ");
	scanf("%d",&num);

/*Processamento*/
	if ((num % 3 == 0 && num % 7 == 0 )) {	
		printf("O %d e divisivel por 3 e por 7 ", num);
	}
	else {
		printf("O %d nao e divisivel nem por 3 nem por 7",num);
	}
	
	return(0);

 } 
