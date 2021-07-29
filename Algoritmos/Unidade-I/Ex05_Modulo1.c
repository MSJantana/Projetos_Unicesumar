 /*Lógica de Programacao II - Exercicio 05 - Calcular o raio do Circulo*/
 #include <stdio.h>
 #include <math.h>
 #define pi 3.141593
 main ()
{/*Declaracao das variaves*/
	float r,A,P; // r (raio da circunferencia)

/*Entrada de Dados*/
	printf("Digite o valor do raio: ");
	scanf("%f",&r);

/*Processamento dos Dados*/
		A=pi*pow(r,2); /*Calculo da área do Circulo*/
		P=2*pi*r; /* Calculo do Perimetro de um Circulo*/
		printf("\n%.2f",A);
		printf("\n%.2f",P);
	
	return(0);
 }
