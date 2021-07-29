#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main ()	 {
	setlocale(LC_ALL, "Portuguese");
	
	int MatA [4][4],MatB [4][4],i,j;
	
	for (i=0;i<4;i++)
	{
		for(j=0;j<4;j++)
		{
			printf("[%d][%d] : ",i+1,j+1);
			scanf("%d",&MatA[i][j]);
		}	
	}
	
	for (i=0;i<4;i++)
	{
		for(j=0;j<4;j++)
		{
			printf("[%d][%d] : ",i+1,j+1);
			scanf("%d",&MatB[i][j]);
		}
	}
	printf("\nSoma de Matrizes\n");
	for(i=0;i<4;i++)
	{
		printf("|\t");
		for(j=0;j<4;j++)
		{
			printf("%d\t",MatA[i][j]+MatB[i][j]);
		}
		printf("|\n");
	}
	printf("\nSubtração de Matrizes\n");
	for(i=0;i<4;i++)
	{
		printf("|\t");
		for(j=0;j<4;j++)
		{
			printf("%d\t", MatA[i][j]-MatB[i][j]);
		}
		printf("|\n");
	}
	
	
	
	
	return 0;
}
	
