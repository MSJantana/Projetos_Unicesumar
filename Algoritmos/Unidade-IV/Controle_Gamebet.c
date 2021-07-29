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
		
		printf("Informe a Op��o Desejada: ");
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
		
		default: printf("Op��o Invalida...\n");
		
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
	printf("3 - Relat�rios\n");
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
			printf("Insira o C�digo do T�cnico: ");
			fflush(stdin);
			scanf("%d",&cdtcadastro[j].cod);
			printf("Insira o nome do T�cnico: ");
			fflush(stdin);
			gets(cdtcadastro[j].nome);
			printf("Insira a Regi�o do T�cnico: ");
			fflush(stdin);
			gets(cdtcadastro[j].regiao);
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
			printf("\nC�digo T�cnico: %d",i+1,cdtcadastro[i].cod);
			printf("\nNome: %s",cdtcadastro[i].nome);
			printf("\nRegi�o: %s",cdtcadastro[i].regiao);
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
	char busca[5];
	printf("Digite a Regi�o que Deseja Pesquisar:  ");
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
		printf("Regi�o:%s",cdtcadastro[k].regiao);
		printf("Tecnico: %d",cdtcadastro[k].cod);
		printf("Nome: %s",cdtcadastro[k].nome);
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

	
	
	
	
	
	
	
	
	
	

