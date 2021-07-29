#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define TAM 5

struct cadastropl 
{
	char modelo[6];
	int serie;
	char data[10];
};
struct cadastrotec 
{
	char nome[20];
	int cod;
	char regiao[5];
};

struct cadastropl cdtcadastro[TAM];
struct cadastrotec cdtecnico[TAM];
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
		
		printf("Informe a Op��o Desejada: ");
		scanf("%d",&op);
		
		switch (op)
	{
	case 1 : system ("cls");
			cadastro_placa ();
		break;
		
	case 2 : system ("cls");
		cadastro_tecnico ();
		break;
		
	case 3 : system ("cls");
		pesquisa_reg ();
		break; 
		
	case 4 : system ("cls");
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
	
	case 5 : printf("Saindo do Programa...\n");
		break;
		
		default: printf("Op��o Invalida...\n");
		
	}
		
	}while(op !=5);
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
	printf("\n****************************************\n");
	printf("1 - Cadastro de Placas\n");
	printf("2 - Cadastro de T�cnicos\n");
	printf("3 - Pesquisa \n");
	printf("4 - Relat�rios\n");
	printf("5 - Sair");
	printf("\n****************************************\n");	
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
			printf("Insira o Modelo da Placa: ");
			fflush(stdin);
			gets(cdtcadastro[j].modelo);
			printf("Insira o N� de S�rie da Placa: ");
			fflush(stdin);
			scanf("%d",&cdtcadastro[j].serie);
			printf("Insira a Data de Compra da Placa: ");
			fflush(stdin);
			gets(cdtcadastro[j].data);
			printf("\n\nDeseja cadastrar uma nova Placa? [1] Sim [2] N�o?: ");
			scanf("%d", &resp);
	}
}	
	
void cadastro_tecnico ()
{
	int resp;
	resp = 1;
	while (resp == 1)
	{
		k++;
			system("cls");
			printf("Registro = %d\n", k+1);
			printf("Insira o C�digo do T�cnico: ");
			fflush(stdin);
			scanf("%d",&cdtecnico[k].cod);
			printf("Insira o nome do T�cnico: ");
			fflush(stdin);
			gets(cdtecnico[k].nome);
			printf("Insira a Regi�o do T�cnico: ");
			fflush(stdin);
			gets(cdtecnico[k].regiao);
			printf("\n\nDeseja cadastrar uma nova Placa? [1] Sim [2] N�o?: ");
			scanf("%d", &resp);	
	}
}
//*************************Fim do Cadastro******************************************

//*************************Relat�rios de T�cnico************************************
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
			printf("\nC�digo T�cnico: %d",i+1,cdtecnico[i].cod);
			printf("\nNome: %s",cdtecnico[i].nome);
			printf("\nRegi�o: %s",cdtecnico[i].regiao);
			printf("\n");
			printf("**********************************\n");
					
		}
		
 	}
}
//*************************Relat�rio de Placas***************************************
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
			printf("\nNumero de S�rie: %d",cdtcadastro[i].serie);
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
	int busca;
	//char busca[5];
	printf("Digite o C�digo do T�cnico:  ");
	scanf("%d",&busca);
	//scanf("%s",busca);
	k = 0;
	acha = 0;
	while ((k<TAM) && (acha==0))
	{
		if (cdtecnico[k].cod == busca)
			acha = 1;
		else 
			k++;
	}
	if (acha==1)
	{
		printf("\n**********************************");
		printf("\nTECNICO: %d",cdtecnico[k].cod);
		printf("\nNOME: %s",cdtecnico[k].nome);
		printf("\nREGI�O:%s",cdtecnico[k].regiao);
		printf("\n");
		printf("**********************************\n");
	}
	else 
	{
		printf("Registro n�o encontrado!!!!!\n");
	}
		
}
//***********************************************************************************************

//*********************Submenu de Relat�rios*****************************************************
int sub_menu_relatorios ()	
{
	int op;
	printf("\t\t********RELAT�RIOS********\n");
	char *menu = "\t\t [1] - Relat�rio T�cnico\n"
				 "\t\t [2] - Relat�rio Placas\n"
				 "\t\t [3] - Voltar\n";
	do {
		puts (menu);
		scanf("%d",&op);
	}while (op>3 || op <1);
	
	return op;

}

	
	
	
	
	
	
	
	
	
	

