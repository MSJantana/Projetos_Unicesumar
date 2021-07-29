#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
int main ()

/*Entrada: ler o Peso e a altura de uma pessoa
Processamento: calcular peso e altura e verificar o imc
saida: Calcular o IMC dessa pessoa */


{
	setlocale(LC_ALL, "Portuguese");
	float peso,altura,imc;
		
	printf("Digite o Peso: ");
	scanf("%f",&peso);
	printf("Digite a Altura: ");
	scanf("%f",&altura);
	
	imc = peso/(altura*altura); // Formula para calcular o IMC
	
	/* 
	if (imc < 20)
	{
			printf("Abaixo do Peso");
	}
		else if (imc >=20 && imc <=25)
		{
			printf("Normal");
		}
		else if (imc >=26 && imc <=30)
		{
			printf("Excesso de Peso");
		}
		else if (imc >=31 && imc <=35)
		{
			printf("Obesidade");
		}
		else 
		{
			printf ("Obesidade Morbida");
		}
	*/
	printf("o IMC é: %.2f", imc);
	return (0);
}
