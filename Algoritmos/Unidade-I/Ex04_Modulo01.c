 /*L�gica de Programacao II - Exercicio 03 - Calcular M�dia de 4 N�meros Inteiros*/
 #include <stdio.h>
 #include <stdlib.h>
 main () 
 {/*Declara�ao de variaves*/
 	float n1,n2,n3,n4,media;
 	
 /*Entrada de Dados*/	
 	printf("Digite o Primeiro Numero: ");
 	scanf("%f",&n1);
 	printf("Digite o Segundo Numero: ");
 	scanf("%f",&n2);
 	printf("Digite o Terceiro Numero: ");
 	scanf("%f",&n3);
 	printf("Digite o Quarto Numero: ");
 	scanf("%f",&n4);
 
 /*Processamento dos Dados*/
 	media = (n1+n2+n3+n4)/4; /*Calculo para achar a m�dia*/
	printf("A Media total dos numeros e:  %.2f",media);	
 	
 	return (0);
 }
