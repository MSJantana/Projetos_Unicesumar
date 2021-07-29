 /*Lógica de Programacao II - Exercicio 02-v2 - Faça um programa que leia um número e informe se ele e divisivel por 3 e por 7*/
 #include<stdio.h>

#include<stdlib.h>

#include<locale.h>

int main(){

    setlocale(LC_ALL,"");

    int cupom;

    printf("Digite o número do seu Cupom: ");

    scanf("%d", &cupom);

     if((cupom % 3 == 0 || cupom % 7 == 0) && !(cupom % 21 == 0))

        {

          printf("\nPARABÉNS: Você ganhou um brinde!");

        }

        else

        {

            printf("\nDESCULPE: este número não vale um brinde!");

        }

  return 0;

}


 
 
