#include <stdio.h>
#include <locale.h>

/*Objetivo do Algortimo: Calcular o n�mero de alunos aprovados e reprovados.
Entrada: ler o n�mero de notas das disciplinas. c�digo e notas dos alunos.
Processamento: calcular a m�dia dos alunos e contar o n�mero de aprovados e 
reprovados.
Sa�da: Imprimir o n�emro de aprovados e reprovados. */


int main ()
{	setlocale(LC_ALL, "Portuguese");
	int aprovado,reprovado,cod,nnotas,cont;
	float media,nota,soma;
	
	aprovado = 0;
	reprovado = 0;
	
	printf("\nInforme o numero de nota da disciplina: ");
	scanf("%d",&nnotas);
	printf("\nInforme o codigo do aluno: ");
	scanf("%d",&cod);
	
	while (cod != 0)
	{
		soma = 0;
		for (cont=1; cont<=nnotas;cont++)
	
	
		{
		printf("Informe a %d nota do Aluno: ",cont);
		scanf("%f",&nota);
		soma = soma + nota;
		
		}
		
	media = soma /nnotas;
	if (media >=6)
		aprovado++;
	else
		reprovado++;
	printf("\nInforme o codigo do aluno: ");
	scanf("%d",&cod);
	
	}		
	printf("\nO numero de aprovados � %d: ",aprovado);
	printf("\nO Numero de reprovados � %d: ",reprovado);
	
	
	
		
	
	
	
	
	return(0);
}	
	
