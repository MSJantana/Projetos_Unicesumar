#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <conio.h>
#include <time.h>
#define LIN 4
#define COL 4

void cabecalho();
void menu();
void matrix_preenchida();
void matriz_parimpar ();
void matriz_diagonal();
void matriz_diagsecundaria ();

int main ()
{
	setlocale(LC_ALL, "Portuguese");
    int Matriz[LIN][COL];
    int matrizpar [LIN][COL];
    int matrizimpar [LIN][COL];
	srand(time(NULL));

	int op;
	do
	{
		cabecalho();
		menu();
		printf("Informe a Opção Desejada: ");
		scanf("%d",&op);
		switch(op)
		{
			case 1 :
			    system ("cls");
				matrix_preenchida(Matriz);
                break;

            case 2 :
                system ("cls");
                matriz_parimpar (Matriz,matrizpar,matrizimpar);
                break;

			case 3 :
			    system("cls");
                matriz_diagonal(Matriz);
                break;

            case 4 :
                system("cls");
                matriz_diagsecundaria (Matriz);
                break;

			case 5:
				printf("Saindo do Programa.....\n");
				break;

			default : printf("Opção Invalida...\n");
		}

	}while(op!=5);

	return 0;
}
//*****************Monta o Menu de Acesso*******************************
void cabecalho ()
{
	int i;
	for(i=0;i<40;i++)
		printf("*");
	printf("\n\tMatriz Diagonal M'arcius\n");
	for(i=0;i<40;i++)
		printf("*");
}
void menu()
{
	printf("\n****************************************\n");
	printf("1 - Matriz Preenchida\n");
	printf("2 - Matriz Preenchida Par/Impar\n");
	printf("3 - Matriz Diagonal Principal \n");
	printf("4 - Matriz Diagonal Secundária\n");
	printf("5 - Sair");
	printf("\n****************************************\n");
}

void matrix_preenchida(int Matriz[LIN][COL])
{

	int i,j,min,max,intervalo;

	/*//Criar matriz do tamanho informado pelo usuário
	printf("Informe o tamanho da Coluna da Matriz: ");
	scanf("%i",&k);
	printf("Informe o tamanho da Linha da Matriz: ");
	scanf("%i",&l);
	int Matriz[k][l];*/

	//Preencher Matriz com um intervalo informado pelo usuário
	printf("Defina o Intervalo Mínino: ");
	scanf("%i",&min);
	printf("Defina o Intervalo Máximo: ");
	scanf("%i",&max);
	while (max<=min)
	{
		printf("\t\t***Intervalo Invalido***");
		printf("Digite Novo Valore Minimo: ");
		scanf("%i",&min);
		printf("Digite Novo Valore Máximo: ");
		scanf("%i",&max);
	}
	intervalo = max - min;
	//Preenchendo o Vetor
	for(i=0;i<LIN;i++)
	{
		for(j=0;j<COL;j++)
		{
			Matriz[i][j] = 1+(rand()%intervalo);
			printf("\t %i",Matriz[i][j]);
		}
		printf("\n");
	}
}
//------------------------------------------------------------------------------------------------
void matriz_parimpar (int Matriz[LIN][COL],int matrizpar[LIN][COL],int matrizimpar [LIN][COL])
{
    int i,j;
    int valor;

    for(i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
            if (Matriz[i][j]%2==0)
            {
                valor = 0;
                matrizimpar[i][j] = Matriz[i][j];
                matrizpar[i][j] = valor;
            }
            else
            {
                valor = 1;
                matrizimpar[i][j] = valor;
                matrizpar[i][j] = Matriz[i][j];
            }
        }
      printf("\n");
  }
    printf("\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\tComparar com Matriz Original:\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for(i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
           printf("\t %i",Matriz[i][j]);
        }
        printf("\n");
    }
    printf("\n");

    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("Imprimir Matriz com Números Pares = 0:\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for(i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
          printf("\t %i",matrizpar[i][j]);
        }
        printf("\n");
    }
    printf("\n");

    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("Imprimir Matriz com Números Impares = 1:\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for(i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
          printf("\t %i",matrizimpar[i][j]);
        }
        printf("\n");
    }
  }
//--------------------------------------------------------------
void matriz_diagonal (int Matriz[LIN][COL])
{
    int i,j;
    printf("\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\tComparar com Matriz Original:\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for(i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
           printf("\t %i",Matriz[i][j]);
        }
        printf("\n");
    }
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\n\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\tDiagonal Principal: \n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for(i=0;i<LIN;i++)
    {
        printf("\t %i", Matriz[i][i]);
    }
     printf("\n\n");
}
//---------------------------------------------------------------
void matriz_diagsecundaria (int Matriz[LIN][COL])
{
    int i,j;
    printf("\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\tComparar com Matriz Original:\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for(i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
           printf("\t %i",Matriz[i][j]);
        }
        printf("\n");
    }
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\n\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("\tDiagonal Secundaria:\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    for (i=0;i<LIN;i++)
    {
        for(j=0;j<COL;j++)
        {
            if(j == (LIN - 1 - i))
            {
                printf("\t %i", Matriz[i][j]);
            }
        }
    }
    printf("\n\n");
}
