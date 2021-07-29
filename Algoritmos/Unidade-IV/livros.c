#include <stdio.h>
	struct Livros
	{
		char nome [30];
		char editora [12];
		float preco;
	};

main (){
	
	struct Livros Cadastro [2];
	int op,i;
	
	do {
		printf("\n");
		printf("Menu de Opcoes\n");
		printf("1 - Cadastrar Livro\n");
		printf("2 - Consultar Livro\n");
		printf("3 - Sair\n");
		printf("\nInforme a Opcao Desejada: ");
	
        scanf("%d", &op);
        
		
		switch (op){
			
			case 1 : 
			for (i=0;i<2;i++)
			{
				system("cls");
				printf("Insira o Nome do Livro: ");
				fflush(stdin);
				scanf("%s",Cadastro[i].nome);
				printf("Insira a Editora do Livro: ");
				fflush(stdin);
				scanf("%s",Cadastro[i].editora);
				printf("Insira o Preco do Livro: ");
				fflush(stdin);
				scanf("%f",&Cadastro[i].preco);
			}
			break;
			
			case 2 : for (i=0;i<2;i++)
			{
				printf("\nNome do Livro:%s",Cadastro[i].nome);
				printf("\nEditora: %s",Cadastro[i].editora);
				printf("\nPreco:%f",Cadastro[i].preco);
				printf("\n");
			}
			break;
			
			case 3 : printf("Saindo do Sistema.....");
			break;
		
		}

		
	}while (op !=3);

	
	return 0;
}
