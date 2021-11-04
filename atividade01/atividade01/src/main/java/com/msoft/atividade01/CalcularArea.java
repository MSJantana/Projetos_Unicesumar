package com.msoft.atividade01;

import java.util.Scanner;

/**
 *
 * @author Marcio
 */
public final class CalcularArea {
    //Atributos
    Scanner entrada = new Scanner(System.in);
    private double raio;
    private double area;
    private int qtdesalvavidas;
    
    //Entrada de valores para o calculo
    public CalcularArea() {  
       System.out.println("Informe o Valor do Raio: ");
       this.raio= entrada.nextDouble();
    }

    //Metodo para imprimir os valores na tela
    public void imprimir (){
       //System.out.println("O Circulo do Raio é: " + this.getRaio());
       System.out.printf("\nPara Essa Área %.2f Metros" , circulo());
       System.out.println("\nSerá Necessário " + this.getQtdesalvavidas()+ " Salva Vidas!!");               
    }
        
    //Calcula o Valor do Raio
    public double circulo(){
        area = Math.PI * Math.pow(raio, 2);
        this.setQtdesalvavidas();
        return this.getArea();        
    }
    
    //Metodos Modificadores

    public Scanner getEntrada() {
        return entrada;
    }

    public void setEntrada(Scanner entrada) {
        this.entrada = entrada;
    }

    public double getRaio() {
        return this.raio;
    }

    public void setRaio(double raio) {
        this.raio = raio;
    }

    public double getArea() {
        return this.area;
    }

    public void setArea(double area) {
        this.area = area;
        this.setQtdesalvavidas();
    }

    public int getQtdesalvavidas() {
        return this.qtdesalvavidas;
    }

    public void setQtdesalvavidas() {
        if (this.area < 1000) {
            this.qtdesalvavidas = 1;           
        }else if (this.area >= 1001 && this.area <= 10000) {
            this.qtdesalvavidas = 2;
        }else if (this.area >= 10001 && this.area <= 100000) {
            this.qtdesalvavidas = 3;
        }else{
            this.qtdesalvavidas = 4;
        }
        
    }

}
