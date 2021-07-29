#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define max 5
int main ()
{
	
	setlocale(LC_ALL, "Portuguese");
	int n1,n2,iguais;
	int VetorA[max];
	int VetorB[max];
	
	for(n1=0;n1<max;n1++)
	{
		VetorA[n1]=0;
		VetorB[n2]=0;
	}
	printf("\n==========================================\n");
	for (n1=0;n1<max;n1++)
	{
		printf("Digite o %d elemento do VetorA: ",n1+1);
		scanf("%d",&VetorA[n1]);
		
	}
	printf("\n==========================================\n");
	for (n1=0;n1<max;n1++)
	{
		printf("Digite o %d elemento do VetorB: ",n1+1);
		scanf("%d", &VetorB[n1]);
	}
	printf("\n==========================================\n");
	
	for (n1=0;n1<max;n1++)
	{
		for(n2=0;n2<max;n2++){
			if (VetorA[n1] == VetorB[n2]){
				iguais++;
			}
		}
		if (iguais < 1 ){
			printf("\nElementos Diferentes: ");
			printf("%d",VetorA[n1]);
		}
		iguais = 0;
	}
		
	return 0;
}
