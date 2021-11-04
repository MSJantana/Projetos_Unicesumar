package com.msoft.curso;


public class Curso {
    private int id;
    private String nome;
    private  double duracao_horas;

    public Curso(int id, String nome, double duracao_horas) {
        this.id = id;
        this.nome = nome;
        this.duracao_horas = duracao_horas;
    }

    public  Curso(String nome, double duracao_horas){
        this.nome = nome;
        this.duracao_horas = duracao_horas;
    }

    public Curso(){}
    public int getId(){return id;}
    public void setId(int id){this.id = id;}
    public String getNome(){return nome;}
    public void setNome(String nome){this.nome = nome;}
    public double getDuracao_horas(){return duracao_horas;}
    public void setDuracao_horas(double duracao_horas){this.duracao_horas = duracao_horas;}
}
