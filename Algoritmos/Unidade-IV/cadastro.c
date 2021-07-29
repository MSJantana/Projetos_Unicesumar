#include <stdio.h>
#include <stdlib.h>
struct lances
{
	char nome_lanche[12];
	float preco;
};


main (){
	
	int op,i,j;
	struct lances cadastro[2];
	do{
		printf("\nMenu de Opcoes");
		printf("\n1 - Cadastrar Lanches");
		printf("\n2 - Visualiar Precos;");
		printf("\n3 - Sair");
		printf("\n");
		scanf("%d",&op);
		
		switch (op){
			case 1 : for(i=0;i<2;i++){
				system("cls");
				printf("Escreva o Nome do Lanche:");
				fflush(stdin);
				scanf("%s",cadastro[i].nome_lanche);
				printf("Preco do Lanche: R$");
				fflush(stdin);
				scanf("%f",&cadastro[i].preco);
			}
			break;
				
			case 2 : for(j=0;j<2;j++){
				printf("O Lanche: %s\n",cadastro[j].nome_lanche);
				printf("Preco: %.2f\n",cadastro[j].preco);
			}
			break;
			case 3 :
				printf("Saindo do Sistema....");
				break;
			default:
				printf("opção Invalida...");
	
		
	}
	
	}while(op != 3);	
	
	
	return 0;
}
