#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main ()
/*Entrada: Ler um valor a ser pago do produto
Processamento: Determinar qual será o valor do desconto aplicado do produto.
Saida: Imprimir qual foi a condição do pagamento */ 
{
	setlocale(LC_ALL, "Portuguese");
	float vproduto,vdesconto,vaumento,vproduto1;
	int op;
	
	printf("Digite o Valor Pago: ");
	scanf("%f",&vproduto);
	printf("Informe a Condição de Pagamento: ");
	scanf("%d",&op);
	
	switch (op)
	
	{
		case 1 : vdesconto = vproduto * 10/100;
				vproduto = vproduto - vdesconto;
		printf("\nA vista em dinheiro ou cheque, recebe R$ %.2f reais de desconto.",vdesconto);
		printf("\nO Valor a ser pago é de R$ %.2f",vproduto);
		break;
		case 2 : vdesconto = vproduto * 5/100;
				vproduto = vproduto - vdesconto;
		printf("\nÀ vista no cartão de crédito, recebe R$ %.2f reais de desconto.",vdesconto);
		printf("\nO Valor a se pago é de R$ %.2f",vproduto);
		break;
		case 3 : vproduto = vproduto / 2;
		printf("Em duas vezes com parcelas de R$ %.2f, preço normal de etiqueta sem juros.",vproduto);
		break;
		case 4 : vaumento = vproduto * 10/100; // Calculo o percentual do produdo acrescido em 10%
				vproduto1 = vproduto + vaumento; // Guardo o valor do produto com o acrescimo de 10%
				vproduto = vproduto1  / 3; // Mostro o valor das parcelas
		printf("\nEm três vezes com parcelas de R$ %.2f, preço normal de etiqueta mais juros de R$ %.2f.",vproduto,vaumento);
		printf("\nPreço do produto total ficou em R$ %.2f", vproduto1);
		break;
		default: printf("Opção Inválida");
	}

		
	return(0);
}
