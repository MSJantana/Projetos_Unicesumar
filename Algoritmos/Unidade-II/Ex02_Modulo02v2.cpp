 /*L�gica de Programacao II - Exercicio 02-v2 - Fa�a um programa que leia um n�mero e informe se ele e divisivel por 3 e por 7*/
 #include <stdio.h>
 main()
 {/*Declarar as variaveis*/
 
 	int num;
 
 /*Entrada de dados*/
 	printf("Digite um numero: ");
 	scanf("%d",&num);
 
 /*Processamento das informa�oes*/
 	if (num % 3 == 0){ /*Verifica se o resto da divisao e 0 se for entao o numero e divisivel por 3, se nao for nao retorna valor nenhum*/ 
 		printf("\nO %d e divisivel por 3",num); 		
	 }
 	if (num % 7 == 0) {/*Verifica se o resto da divisao e 0 se for entao o numero e divisivel por 7, se nao for nao retorna valor nenhum*/ 
 		printf("\nO %d e divisivel por 7 ", num);
	 }	
 	else {
 		printf("\nO Numero digitado nao e divisel por 3 nem por 7",num);
	 }
  	return(0);
 	
 }
