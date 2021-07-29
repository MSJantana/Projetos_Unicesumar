 /*Lógica de Programacao II - Exercicio 03 - Calcular Média de 4 Números Inteiros*/
 #include <stdio.h>
 #include <stdlib.h>
 main () 
 {/*Declaraçao de variaves*/
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
 	media = (n1+n2+n3+n4)/4; /*Calculo para achar a média*/
	printf("A Media total dos numeros e:  %.2f",media);	
 	
 	return (0);
 }
