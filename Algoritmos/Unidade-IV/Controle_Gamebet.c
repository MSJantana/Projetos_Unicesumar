#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define TAM 5

struct cadastropl 
{
	int cod;
	char nome[20];
	char regiao[5];
	char modelo[6];
	int serie;
 	char data[10];
};

struct cadastropl cdtcadastro[TAM];

int k = -1;
int j = -1;

void cabecalho();
void menu();
void cadastro_placa ();
void cadastro_tecnico ();
void relatorios ();
void relatorio_placa();
void pesquisa_reg ();

int main () 
{
	setlocale(LC_ALL, "Portuguese");
		
	int op,i,opsub;
		
	do {
		cabecalho();
		menu();
		
		printf("Informe a Opção Desejada: ");
		scanf("%d",&op);
		
		switch (op)
	{
	case 1 : system ("cls");
			cadastro_placa ();
		break;
			
	case 2 : system ("cls");
		pesquisa_reg ();
		break; 
		
	case 3 : system ("cls");
	do {
		opsub = sub_menu_relatorios ();
		switch (opsub) {
			case 1 :relatorios ();
					getch();
			break;
			case 2 :relatorio_placa();
					getch();
			break;
			}
		}while (opsub !=3);
	
	case 4 : printf("Saindo do Programa...\n");
		break;
		
		default: printf("Opção Invalida...\n");
		
	}
		
	}while(op !=4);
	return (0);
}
//*****************Monta o Menu de Acesso*******************************
void cabecalho ()
{
	int i;
	for(i=0;i<40;i++)
		printf("*");
	printf("\n\tControle de Placas\n");
	for(i=0;i<40;i++)
		printf("*");
}
void menu()
{
	printf("\n***************************\n");
	printf("1 - Cadastro de Placas\n");
	printf("2 - Pesquisa de Placas\n");
	printf("3 - Relatórios\n");
	printf("4 - Sair");
	printf("\n***************************\n");	
}

//************************************************************************

//****************Cadastro ***********************************************
void cadastro_placa ()
{
	int resp;
	resp = 1;
	while (resp == 1)
	{
		j++;
			system("cls");
			printf("Registro = %d\n", j+1);
			printf("Insira o Código do Técnico: ");
			fflush(stdin);
			scanf("%d",&cdtcadastro[j].cod);
			printf("Insira o nome do Técnico: ");
			fflush(stdin);
			gets(cdtcadastro[j].nome);
			printf("Insira a Região do Técnico: ");
			fflush(stdin);
			gets(cdtcadastro[j].regiao);
			printf("Insira o Modelo da Placa: ");
			fflush(stdin);
			gets(cdtcadastro[j].modelo);
			printf("Insira o Nº de Série da Placa: ");
			fflush(stdin);
			scanf("%d",&cdtcadastro[j].serie);
			printf("Insira a Data de Compra da Placa: ");
			fflush(stdin);
			gets(cdtcadastro[j].data);
			printf("\n\nDeseja cadastrar uma nova Placa? [1] Sim [2] Não?: ");
			scanf("%d", &resp);
	}
}	

//*************************Fim do Cadastro******************************************

//*************************Relatórios de Técnico************************************
void relatorios ()
{
	int i;
	system("cls");
	
	if (k == -1)
	{
		printf("Cadastro Vazio...\n");
		getch();
	}
	else 
	{
		for (i=0;i<=k;i++)
		{
			printf("\n**********************************");
			printf("\nCódigo Técnico: %d",i+1,cdtcadastro[i].cod);
			printf("\nNome: %s",cdtcadastro[i].nome);
			printf("\nRegião: %s",cdtcadastro[i].regiao);
			printf("\n");
			printf("**********************************\n");
					
		}
		
 	}
}
//*************************Relatório de Placas***************************************
void relatorio_placa ()	
{
	int i;
	system("cls");
	
	if (j == -1)
	{
		printf("Cadastro Vazio....\n");
		getch();
	}
	else
	{
		for (i=0;i<=j;i++)
		{
			printf("\n**********************************");
			printf("\nModelo de Placa: %s",cdtcadastro[i].modelo);
			printf("\nNumero de Série: %d",cdtcadastro[i].serie);
			printf("\nData: %s",cdtcadastro[i].data);
			printf("\n");
			printf("**********************************\n");
			
		}
	}
}

//******************************Pesquisa Placas*************************************************
void pesquisa_reg ()
{
	int k,acha;
	char busca[5];
	printf("Digite a Região que Deseja Pesquisar:  ");
	scanf("%s",busca);
	k = 0;
	acha = 0;
	while ((k<TAM) && (acha==0))
	{
		if (cdtcadastro[k].regiao == busca)
			acha = 1;
		else 
			k++;
	}
	if (acha==1)
	{
		printf("Região:%s",cdtcadastro[k].regiao);
		printf("Tecnico: %d",cdtcadastro[k].cod);
		printf("Nome: %s",cdtcadastro[k].nome);
	}
	else 
	{
		printf("Registro não encontrado!!!!!\n");
	}
		
}
//***********************************************************************************************

//*********************Submenu de Relatórios*****************************************************
int sub_menu_relatorios ()	
{
	int op;
	printf("\t\t********RELATÓRIOS********\n");
	char *menu = "\t\t [1] - Relatório Técnico\n"
				 "\t\t [2] - Relatório Placas\n"
				 "\t\t [3] - Voltar\n";
	do {
		puts (menu);
		scanf("%d",&op);
	}while (op>3 || op <1);
	
	return op;

}

	
	
	
	
	
	
	
	
	
	

