#include <stdio.h>
#include <locale.h>

/*Entrada: Ler idade, peso, sexo e estado civil de varias pessoas.
Processamento: Apresentar Média Idade e peso das pessoas.
Saida: Imprimir quantidade de pessoas casadas, solteiras e separadas e viuvas.
*/
int main ()

{
	setlocale(LC_ALL, "Portuguese");
	int idade,sexo,estadocivil,casadas,solteiras,separadas,viuvas,quantidade;
	float peso,m_peso,m_idade,t_idade,t_peso;
	idade = 1;
	quantidade = 0;
	t_idade = 0;
	t_peso = 0;
	casadas = 0;
	solteiras = 0;
	separadas = 0;
	viuvas = 0;
	while (idade !=0)
	{
		printf("Informe a Idade da Pessoa: ");
		scanf("%d",&idade);
			if (idade !=0)
		{
			quantidade++;
			t_idade = t_idade + idade;
			printf("Informe o Peso: ");
			scanf("%f",&peso);
			t_peso = t_peso + peso;
			printf("Informeo Sexo [1-F]/[2-M]");
			scanf("%d",&sexo);
			printf("\n########################");
			printf("\n1 - Casadas");
			printf("\n2 - Solteiras");
			printf("\n3 - Separadas");
			printf("\n4 - Viuvas");
			printf("\n########################");
			printf("\nDigite o Estado Civil: ");
			scanf("%d",&estadocivil);
			switch (estadocivil)
			{
				case 1 : casadas++;
				break;
				case 2 : solteiras++;
				break;
				case 3 : separadas++;
				break;
				case 4 : viuvas++;
				break;
				default : printf ("\nEstado Civil Invalido");
				break;
			}
		}
			
	}
	m_peso = t_peso/quantidade;
	m_idade = t_idade/quantidade;
	printf("\nCasadas: %d \nSolteiras: %d \nSeparadas: %d \nViuvas: %d",casadas,solteiras,separadas,viuvas);
	printf("\nMedia do Peso: %.3f \Media de Idade: %.2f\n",m_peso,m_idade);
	
	return (0);
}
