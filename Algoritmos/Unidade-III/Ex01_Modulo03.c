#include <stdio.h>
#include <locale.h>

/*Objetivo do Algortimo: Calcular o número de alunos aprovados e reprovados.
Entrada: ler o número de notas das disciplinas. código e notas dos alunos.
Processamento: calcular a média dos alunos e contar o número de aprovados e 
reprovados.
Saída: Imprimir o núemro de aprovados e reprovados. */


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
	printf("\nO numero de aprovados é %d: ",aprovado);
	printf("\nO Numero de reprovados é %d: ",reprovado);
	
	
	
		
	
	
	
	
	return(0);
}	
	
