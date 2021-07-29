#include <stdio.h>
#include <locale.h>
int main (){
	setlocale(LC_ALL, "Portuguese");
	int n;
	printf("Entre com o valor: ");
	scanf("%d", &n);
	if (n == 1){
		printf("Codigo Valido, Numero um");
	}
	if(n==2){
		printf("Codigo Valido, Numero dois");
	}
	if (n==3){
		printf("Codigo Valido, Numero tres");
	}
	if ((n<1) || (n>3)){
		printf("Codigo Inválido");
	}
	return (0);
}
