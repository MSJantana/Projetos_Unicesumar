/*Lógica de Programacao II - Exercicio 04 - Elabore um programa que receba o salário de um funcionario e o codigo do c%argo*/
#include <stdio.h>
main()
{/*Declaracao das variaves*/
	int codigo;
	float pagamento,aumento;

/*Entrada dos Dados*/
	printf("Informe o codigo do Cargo: ");
	scanf("%d",&codigo);
	printf("Informe o vencimentos Atual: ");
	scanf("%f",&pagamento);
	
/*Processamento dos Dados - Faço os calculos de cada valor de acordo com informaçao digitada*/
	switch (codigo)
	{
		case 1 : aumento = pagamento * 40/100; /*Se codigo do cargo for 1, programa usa esse calculo*/
				 pagamento = pagamento + aumento;
		printf("\n1 - Servente");
		printf("\nO Reajuste Salarial foi de R$ %.2f ",aumento);
		printf("\nO Novo Salario com o Reajuste Ficou R$ %.2f ",pagamento);
		break;
		case 2 : aumento = pagamento * 35/100;/*Se codigo do cargo for 2, programa usa esse calculo*/
				 pagamento = pagamento + aumento;
				printf("\n2 - Pedreiro");
				printf("\nO Reajuste Salario foi de R$ %.2f ",aumento);
				printf("\nO Novo Salario com o Reajuste ficou R$ %.2f ",pagamento);
			break;
		case 3 : aumento = pagamento * 20/100;/*Se codigo do cargo for 3, programa usa esse calculo*/
				 pagamento = pagamento + aumento;
				printf("n\3 - Mestre de Obras");
				printf("\nO Reajuste Salario foi de R$ %.2f ",aumento);
				printf("\nO Novo Salario com o Reajuste ficou R$ %.2f ",pagamento);
			break;
		case 4 : aumento = pagamento * 10/100;/*Se codigo do cargo for 4, programa usa esse calculo*/
				 pagamento = pagamento + aumento;
				printf("\n4 - Tecnico de Seguranca");
				printf("\nO Reajuste Salario foi de R$ %.2f ",aumento);
				printf("\nO Novo Salario com o Reajuste ficou R$ %.2f ",pagamento);
			break;
			
			
		default: printf("\nOpcao Invalida!!!!");	/*Se codigo digitado estiver fora do escopo retorna Opçao Invalida*/
	}

	return(0);

}
