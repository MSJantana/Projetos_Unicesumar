/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.msoft.mapapsII;

import java.util.Random;

/**
 * @author Marcio
 * Mapa de Programação de Sistema II
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public class Suite {
    Random aleatorio = new Random();
    int codReserva = aleatorio.nextInt(100);
    private int numero;
    private int capacidade;
    private double valorDiaria;
    private String tipoSuite;
/**
    public Suite(int numero, int capacidade, double valorDiaria, String tipoSuite) {
        this.numero = numero;
        this.capacidade = capacidade;
        this.valorDiaria = valorDiaria;
        this.tipoSuite = tipoSuite;
     * @return }*/
 
 
    public Random getAleatorio() {
        return aleatorio;
    }

    public void setAleatorio(Random aleatorio) {
        this.aleatorio = aleatorio;
    }

    public int getCodReserva() {
        return codReserva;
    }

    public void setCodReserva(int codReserva) {
        this.codReserva = codReserva;
    }
      
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getCapacidade() {
        return capacidade;
    }

    public void setCapacidade(int capacidade) {
        this.capacidade = capacidade;
    }

    public double getValorDiaria() {
        return valorDiaria;
    }

    public void setValorDiaria(double valorDiaria) {
        this.valorDiaria = valorDiaria;
        
    }

    public String getTipoSuite() {
        return tipoSuite;
    }

    public void setTipoSuite(String tipoSuite) {
        this.tipoSuite = tipoSuite;
    }

   @Override
    public String toString(){
        return this.codReserva + "\n" + "Numero Apto: "+ this.numero+ 
                "\nCapacidade: " + this.capacidade + "\nValor da Diaria:R$ " + String.format("%.2f", this.valorDiaria) + "\nTipo Suite: " + this.tipoSuite;    
    }
    
   
}
