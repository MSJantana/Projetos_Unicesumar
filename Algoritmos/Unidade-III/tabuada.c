#include <stdlib.h>
#include <stdio.h>

int main ()

{
	int num,i;
	
	printf("Digite um Número: ");
	scanf("%d",&num);
	
	for (i=1; i <=10 ; i++)
			
		printf("%d x %d = %d\n", num,i,num*i);
	
	return (0);
}
