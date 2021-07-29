#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define S 11

void shuffle(int *array, size_t n);

int main(int argc, char *argv[]) {
    FILE *fp;
   fp = fopen("B30000.txt", "w");
   if(fp == NULL)
   {
       printf("Erro ao ler o arquivo!");
       exit(1);
   }

   srand( time(NULL) );

   int aleatorio[S];
   int i;
   for (i = 0; i < S; i++)
       aleatorio[i] = i;


   shuffle(aleatorio, S);

   for (i = 0; i < S; i++){
       printf("Pegando o numero %d\n", aleatorio[i]);
       fprintf(fp,"%d\t", aleatorio[i]);
   }

   printf("\n\nDados arquivados com sucesso!");
   printf("\nPressione uma tecla para finalizar...");

   //getch();
   fclose(fp);
   return 0;
}

void shuffle(int *array, size_t n)
{
   if (n > 1)
   {
       size_t i;
       for (i = 0; i < S; i++)
       {
         size_t j = i + rand() / (RAND_MAX / (n - i) + 1);
         int t = array[j];
         array[j] = array[i];
         array[i] = t;
       }
   }
}
