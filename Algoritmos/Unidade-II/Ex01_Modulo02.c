 /*L�gica de Programacao II - Exercicio 02-v2 - Fa�a um programa que leia um n�mero e informe se ele e divisivel por 3 e por 7*/
 #include<stdio.h>

#include<stdlib.h>

#include<locale.h>

int main(){

    setlocale(LC_ALL,"");

    int cupom;

    printf("Digite o n�mero do seu Cupom: ");

    scanf("%d", &cupom);

     if((cupom % 3 == 0 || cupom % 7 == 0) && !(cupom % 21 == 0))

        {

          printf("\nPARAB�NS: Voc� ganhou um brinde!");

        }

        else

        {

            printf("\nDESCULPE: este n�mero n�o vale um brinde!");

        }

  return 0;

}


 
 
