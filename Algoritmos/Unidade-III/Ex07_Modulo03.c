#include <stdio.h>
#include <locale.h>

int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int pedido,dia,mes,ano,quantidade;
	float vunitario,tcompra;
	
	pedido = 1;
	tcompra = 0;
	
	while (pedido !=0)
	{
		printf("\nDigite o Número do Pedido: ");
		scanf("%d",&pedido);
		if (pedido !=0)
		
		{
					printf("Informe o Dia do Pedido: ");
					scanf("%d",&dia);
					printf("Informe o Mês do Pedido: ");
					scanf("%d",&mes);
					printf("Informe o Ano do Pedido: ");
					scanf("%d",&ano);
					printf("Informe a Quantidade do Pedido: ");
					scanf("%d",&quantidade);
					printf("Informe o preço Unitario: ");
					scanf("%f",&vunitario);
					tcompra = tcompra + vunitario * quantidade;
		}
	}
	printf("O Pedido feito no dia %d/%d/%d", dia,mes,ano);
	printf(" tem um valor total de R$ %.2f",tcompra);
		
	return (0);
}
