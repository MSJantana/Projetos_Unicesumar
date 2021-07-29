#include <stdio.h>

int main (){
	int ano_atual, ano_nascimento,idade;
	
	printf("Informe o ano atual: ");
	scanf("%d",&ano_atual);
	printf("Informe o ano de nascimento: ");
	scanf("%d",&ano_nascimento)	;
	idade = ano_atual - ano_nascimento;
	printf("Para quem nasceu em %d, terá %d anos em %d", ano_nascimento,idade,ano_atual);
	return 0;
}
