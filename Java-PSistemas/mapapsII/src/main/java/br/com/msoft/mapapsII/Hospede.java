/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.msoft.mapapsII;

/**
 * @author Marcio
 * Mapa de Programação de Sistema II
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public class Hospede {
    private String nome;    
    private int idade; 
    private String rua;
    private int numero;
    private String bairro;
    private String cidade;
    private String estado;
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

     
    @Override
    public String toString(){
        return "\nNome: " + this.nome + "\nIdade: " + this.idade + " Anos";
    }
        
}
