#include <stdio.h>

int main (){
	
	int i,j;
	int vetorA[3][3];
	
	
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("Entre com o elemento [%d][%d] da Matriz: ",i+1,j+1);
			scanf("%d",&vetorA[i][j]);
		}
		
	}
	

	for(i=0;i<3;i++)	
	{
		printf("|\t");
		for(j=0;j<3;j++)
		{
			printf("[%d]\t",vetorA[i][j]);
		}
		printf("\n");
	}
	
	
	
	
	
	return 0;
}
