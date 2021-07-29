#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <conio.h>
#define TAM 5

typedef struct livros
{
	int codigo;
	int ano;
	char titulo[30];
	char autor [10];
	char area [10];
	char editora[10];
	
}livros;
void cabecalho ();
void menu ();
void cadastrar_livro(); 
void imprimir_livro();
void pesquisar_livro();
void pesquisar_titulo ();
void pesquisar_nome ();
void pesquisar_area ();
void pesquisar_editora();
void pesquisar_ano ();
void alterar_cadastro ();

livros cadastro[TAM] ;

int k= -1;// Inicializo Contador

int main ()
{
	setlocale(LC_ALL, "Portuguese");
	
	int op,opsub;
	
	do 
	{
		cabecalho();
		menu();
		
		printf("Informe a Opção Desejada: ");
		scanf("%d",&op);
		switch (op)
		{
			case 1: 
				system ("cls");
				cadastrar_livro();
				break;
				
			case 2:
				system ("cls");
				imprimir_livro();
				break;
				
			case 3:
				system ("cls");
			do{
				opsub = submenu_pesquisas ();
				switch(opsub)
				{
					case 1: 
						pesquisar_livro();
						getch();
						break;
					
					case 2 : 
						pesquisar_titulo ();
						getch();
						break;
					
					case 3 :
						pesquisar_nome ();
						getch();
						break;
					
					case 4 :
						pesquisar_ano ();
						getch();
						break;
							
					case 5 :
						pesquisar_editora();
						getch();
						break;
						
					case 6 : 
						pesquisar_area ();
						getch();
						break;
				}
			}while (opsub !=7);
			break;
						
			case 4 : system ("cls");
					alterar_cadastro ();
			  		break;
		
			case 5 : printf("Saindo do Programa.....\n");
		    break;
		    
			default: printf("Opção Invalida!!!!!!........\n");
		}
	}while (op!=5);
		
	return 0;
}

//*****************Monta o Menu de Acesso*******************************
void cabecalho ()
{
	int i;
	for(i=0;i<40;i++)
		printf("*");
	printf("\n\tBiblioteca Virtual M'arcius\n");
	for(i=0;i<40;i++)
		printf("*");
}
void menu()
{
	printf("\n****************************************\n");
	printf("1 - Cadastrar Livro\n");
	printf("2 - Imprimir Livros Cadastrados\n");
	printf("3 - Pesquisar Livros Por Área\n");
	printf("4 - Alterar Cadastro de Livros\n");
	printf("5 - Sair");
	printf("\n****************************************\n");	
}

//**********************Cadastro do Livro**********************************
void cadastrar_livro()
{
	int resp;
	resp = 1;
	
	while (resp == 1)
	{
		k++;
		system("cls");
		printf("Registro = %d\n", k+1);
		printf("**********************************\n");
		printf("Digite o Código do %dº Livro: ",k+1);
		fflush(stdin);
		scanf("%d",&cadastro[k].codigo);
		printf("Digite o Título do Livro: ");
		fflush(stdin);
		gets(cadastro[k].titulo);
		printf("Digite o Nome do Autor: ");
		fflush(stdin);
		gets(cadastro[k].autor);
		printf("Digite a Área do Livro: ");
		fflush(stdin);
		gets(cadastro[k].area);
		printf("Digite o Ano do Livro: ");
		fflush(stdin);
		scanf("%d",&cadastro[k].ano);
		printf("Digite o Nome da Editora: ");
		fflush(stdin);
		gets(cadastro[k].editora);
		printf("\n\nDeseja Cadastrar um Novo Livro? [1] Sim [2] Não?: ");
		scanf("%d", &resp);	
		printf("\n");
		
	}
}
//**********************Função de imprimir o cadastro de livros***************
void imprimir_livro()

{
	int i,print;
	i=0;
	system("cls");
	if (k == -1)
	{
		printf("Cadastro Vazio...\n");
		getch();
	}
	else
	{
		for(i=0;i<=k;i++)
		{
		printf("\n****************************************");
		printf("\nCódigo do Livro: %d",cadastro[i].codigo);
		printf("\nTítulo do Livro: %s",cadastro[i].titulo);
		printf("\nNome do Autor: %s",cadastro[i].autor);
		printf("\nÁrea do Livro: %s",cadastro[i].area);
		printf("\nAno do Livro: %d",cadastro[i].ano);
		printf("\nNome da Editora: %s",cadastro[i].editora);
		printf("\n");
		printf("****************************************\n");
		}
	}
}

//*******************************Pesquisar livros **************************
void pesquisar_livro()
{
	int i,busca, acha;
	printf("Digite o Código que deseja Procurar: ");
	scanf("%d",&busca);
	i = 0;
	acha = 0;
	while ((i<=k) && (acha == 0))
	{
		if (cadastro[i].codigo == busca)
		acha = 1;
		else
		i++;
	}
	if (acha == 1)
	{
		printf("\n****************************************");
		printf("\nCÓDIGO: %d",cadastro[i].codigo);
		printf("\nTÍTULO: %s",cadastro[i].titulo);
		printf("\nAUTOR: %s",cadastro[i].autor);
		printf("\nÁREA: %s",cadastro[i].area);
		printf("\nANO: %d",cadastro[i].ano);
		printf("\nEDITORA: %s",cadastro[i].editora);
		printf("\n");
		printf("****************************************\n");
	}
	else
	{
		printf("Código não Encontrado.....");
	}
}

void pesquisar_ano ()
{
	int i,acha,busca;
	printf("Digite o Ano que Deseja Fazer a Pesquisa: ");
	scanf("%d",&busca);
	i=0;
	acha=0;
	while ((i<=k) && (acha == 0))
	{
		if(cadastro[i].ano == busca)
			acha = 1;
		else
			i++;
	}
	if (acha == 1)
	{
		printf("\n****************************************");
		printf("\nCÓDIGO: %d",cadastro[i].codigo);
		printf("\nTÍTULO: %s",cadastro[i].titulo);
		printf("\nAUTOR: %s",cadastro[i].autor);
		printf("\nÁREA: %s",cadastro[i].area);
		printf("\nANO: %d",cadastro[i].ano);
		printf("\nEDITORA: %s",cadastro[i].editora);
		printf("\n");
		printf("****************************************\n");
	}
	else
	{
		printf("Ano Não Encontrado....");
	}
}
void pesquisar_titulo ()
{
	int i,acha;
	char busca[30];
	printf("Digite o Título que deseja Procurar: ");
	fflush(stdin);
	gets(busca);
	i=0;
	acha=0;
	while (i<=k)
	{
		if (strcmp(busca,cadastro[i].titulo) == 0)
		{
			printf("\n****************************************");
			printf("\nCÓDIGO: %d",cadastro[i].codigo);
			printf("\nTÍTULO: %s",cadastro[i].titulo);
			printf("\nAUTOR: %s",cadastro[i].autor);
			printf("\nÁREA: %s",cadastro[i].area);
			printf("\nANO: %d",cadastro[i].ano);
			printf("\nEDITORA: %s",cadastro[i].editora);
			printf("\n");
			printf("****************************************\n");
			acha = 1;
		}
		i++;	
	}
	if (acha ==0) printf("Título não Encontrado.....\n");
}

void pesquisar_nome ()
{
	int i, acha;
	char busca[10];
	printf("Digite o Autor que deseja Procurar: ");
	fflush(stdin);
	gets(busca);
	i=0;
	acha=0;
	while (i<=k) 
	{
		if (strcmp(busca,cadastro[i].autor)== 0)
		{
			printf("\n****************************************");
			printf("\nCÓDIGO: %d",cadastro[i].codigo);
			printf("\nTÍTULO: %s",cadastro[i].titulo);
			printf("\nAUTOR: %s",cadastro[i].autor);
			printf("\nÁREA: %s",cadastro[i].area);
			printf("\nANO: %d",cadastro[i].ano);
			printf("\nEDITORA: %s",cadastro[i].editora);
			printf("\n");
			printf("****************************************\n");
			acha = 1;
		}
		i++;	
	}
	if (acha == 0) printf("Autor não Encontrado.....");
}

void pesquisar_area ()
{
	int i,acha;
	char busca[10];
	printf("Digite a Área que deseja Procurar: ");
	fflush(stdin);
	gets(busca);
	i=0;
	acha=0;
	while (i<=k)
	{
		if(strcmp(busca,cadastro[i].area) == 0)
		{
		printf("\n****************************************");
		printf("\nCÓDIGO: %d",cadastro[i].codigo);
		printf("\nTÍTULO: %s",cadastro[i].titulo);
		printf("\nAUTOR: %s",cadastro[i].autor);
		printf("\nÁREA: %s",cadastro[i].area);
		printf("\nANO: %d",cadastro[i].ano);
		printf("\nEDITORA: %s",cadastro[i].editora);
		printf("\n");
		printf("****************************************\n");
		acha = 1;
		}
		i++;
	}
	if (acha == 0) printf("Área não Encontrada.....");
}

void pesquisar_editora()
{
	int i,acha;
	char busca[10];
	printf("Digite o Nome da Editora que Deseja Pesquisar: ");
	fflush(stdin);
	gets(busca);
	i=0;
	acha=0;
	while (i<=k)
	{
		if(strcmp(busca,cadastro[i].editora) == 0)
		{
		printf("\n****************************************");
		printf("\nCÓDIGO: %d",cadastro[i].codigo);
		printf("\nTÍTULO: %s",cadastro[i].titulo);
		printf("\nAUTOR: %s",cadastro[i].autor);
		printf("\nÁREA: %s",cadastro[i].area);
		printf("\nANO: %d",cadastro[i].ano);
		printf("\nEDITORA: %s",cadastro[i].editora);
		printf("\n");
		printf("****************************************\n");
		acha = 1;
		}
		i++;		
	}
	if (acha == 0) printf("Editora Não Encontrada....");
}
//****************************************************************************

//****************************SubMenu de Pesquisas****************************
int submenu_pesquisas ()
{
	int op;
	
		printf("\t\t***************PESQUISAS***************\n");
		char *menu = "\t\t - [1] - Pesquisar por Código\n"
					 "\t\t - [2] - Pesquisar por Título\n"
					 "\t\t - [3] - Pesquisar por Autor\n"
					 "\t\t - [4] - Pesquisar por Ano\n"
					 "\t\t - [5] - Pesquisar por Editora\n"
					 "\t\t - [6] - Pesquisar por Área\n"
					 "\t\t - [7] - Voltar\n";
		do
		{
			puts(menu);
			scanf("%d",&op);
			
		}while (op > 7 || op < 1);
	return op;
}
//*******************************************************************************

void alterar_cadastro ()
{
	printf("\n\n==========================================\n\n");
	int busca;
	system("cls");
	printf("Digite o Código a ser alterado: ");
	fflush(stdin);
	scanf("%i",&busca);
	int i=0;
	int acha=0;
	while (i<=k)
	{
		if(busca == cadastro[i].codigo)
		{
		printf("\nDados Encontrado...");
		
		printf("\nTÍTULO: %s",cadastro[i].titulo);
		printf("\nAUTOR: %s",cadastro[i].autor);
		printf("\nÁREA: %s",cadastro[i].area);
		printf("\nANO: %d",cadastro[i].ano);
		printf("\nEDITORA: %s",cadastro[i].editora);
		
		printf("\nDigite o Título do Livro: ");
		fflush(stdin);
		gets(cadastro[i].titulo);
		printf("Digite o Nome do Autor: ");
		fflush(stdin);
		gets(cadastro[i].autor);
		printf("Digite a Área do Livro: ");
		fflush(stdin);
		gets(cadastro[i].area);
		printf("Digite o Ano do Livro: ");
		fflush(stdin);
		scanf("%d",&cadastro[i].ano);
		printf("Digite o Nome da Editora: ");
		fflush(stdin);
		gets(cadastro[i].editora);
		acha = 1;
		}
		i++;
	}
	if (acha==0) printf("\nDados não encontrados....");
	printf("\n\n==========================================\n\n");
}

