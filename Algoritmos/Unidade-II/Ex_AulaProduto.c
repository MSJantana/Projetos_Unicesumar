#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main ()
/*Entrada: Ler um valor a ser pago do produto
Processamento: Determinar qual ser� o valor do desconto aplicado do produto.
Saida: Imprimir qual foi a condi��o do pagamento */ 
{
	setlocale(LC_ALL, "Portuguese");
	float vproduto,vdesconto,vaumento,vproduto1;
	int op;
	
	printf("Digite o Valor Pago: ");
	scanf("%f",&vproduto);
	printf("Informe a Condi��o de Pagamento: ");
	scanf("%d",&op);
	
	switch (op)
	
	{
		case 1 : vdesconto = vproduto * 10/100;
				vproduto = vproduto - vdesconto;
		printf("\nA vista em dinheiro ou cheque, recebe R$ %.2f reais de desconto.",vdesconto);
		printf("\nO Valor a ser pago � de R$ %.2f",vproduto);
		break;
		case 2 : vdesconto = vproduto * 5/100;
				vproduto = vproduto - vdesconto;
		printf("\n� vista no cart�o de cr�dito, recebe R$ %.2f reais de desconto.",vdesconto);
		printf("\nO Valor a se pago � de R$ %.2f",vproduto);
		break;
		case 3 : vproduto = vproduto / 2;
		printf("Em duas vezes com parcelas de R$ %.2f, pre�o normal de etiqueta sem juros.",vproduto);
		break;
		case 4 : vaumento = vproduto * 10/100; // Calculo o percentual do produdo acrescido em 10%
				vproduto1 = vproduto + vaumento; // Guardo o valor do produto com o acrescimo de 10%
				vproduto = vproduto1  / 3; // Mostro o valor das parcelas
		printf("\nEm tr�s vezes com parcelas de R$ %.2f, pre�o normal de etiqueta mais juros de R$ %.2f.",vproduto,vaumento);
		printf("\nPre�o do produto total ficou em R$ %.2f", vproduto1);
		break;
		default: printf("Op��o Inv�lida");
	}

		
	return(0);
}
