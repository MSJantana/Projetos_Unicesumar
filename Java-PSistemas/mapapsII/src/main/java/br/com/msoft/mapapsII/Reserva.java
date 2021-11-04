/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.msoft.mapapsII;

import java.util.List;
import java.util.stream.Collectors;
import javax.swing.JOptionPane;

/**
 * @author Marcio
 * Mapa de Programação de Sistema II
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public class Reserva {
    
    private int qtDiaria;
    private double desconto;
    private double valorTotal;
    private double valorTotalDiaria;
    private Suite suite;   
    private Hospede hospede;
    List<Hospede> hospedes;
      
    //metodo que calcula os valores da diária e calcula os descontos caso haja
    public double calcularDiaria(Suite suite){
                    
        if (this.qtDiaria >= 7){
            this.valorTotal = (this.qtDiaria * suite.getValorDiaria());
            this.desconto = ((this.valorTotal/100)*10);
            this.valorTotalDiaria = this.valorTotal;
            this.valorTotal = this.valorTotal - this.desconto;
        return this.valorTotal;
                   
        }else this.valorTotal = (this.qtDiaria * suite.getValorDiaria());            
            this.valorTotalDiaria = this.valorTotal;
        return this.valorTotal;
   }  
    //metodos que imprime os valores das diárias
    public void imprimirDiaria(Suite suite,Hospede hospede){
        System.out.println("------------------------------------------------");
        System.out.println("Tipo da Suite: " + suite.getTipoSuite());
        System.out.println("Total de Diarias: " +  this.qtDiaria + " Dias");
        System.out.println("Valor Total: R$ " + String.format("%.2f", this.valorTotalDiaria)+ "\n" 
                + "Total de desconto (10%): R$ " + String.format("%.2f", this.desconto) + "\n" + "Total a pagar: R$ "+String.format("%.2f", this.valorTotal));
        System.out.println("Responsavel pela Reserva: " + hospede.getNome());
   }
    /**
    public double verificaCapacidade(Suite suite, int qtd){
       
        if (qtd > suite.getCapacidade()) {
            System.out.println("------------------------------------------------");
            System.out.println("Nao e possivel fazer a Reserva!!!");
            System.out.println("Capacidade da suite: " + suite.getCapacidade());
            System.out.println("Refaca a Operacao!!");
                                  
        return this.qtd;    
            
        }else System.out.println("------------------------------------------------"); 
                System.out.println("Reserva Efetuada com Sucesso!!"); 
                System.out.println("Reserva: " + suite.toString());
        
        return this.qtd;
     * @param hospedes}
     * @param suite
     * @return 
     * @throws java.lang.Exception*/
    
    /**Metodos que valida a quantidade de hospedes e compara com a capacidade da suite se a quantidade de pessoas for maior manda uma exception
    que não é possivel fazer a reserva*/
    
    public boolean validaHospede(List<Hospede> hospedes, Suite suite) throws Exception{
        List<Hospede> hopslist = hospedes.stream().filter(h -> h.getIdade() > 2).collect(Collectors.toList());
        //hopslist.forEach(hops -> System.out.println(hops));
        if (hopslist.size() > suite.getCapacidade()) {
            try {throw new Exception("Nao e possivel fazer a Reserva!!! Refaca a Operacao!!!");  
                
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null,e.getMessage(),"Erro",JOptionPane.ERROR_MESSAGE);
                System.exit(0);
            }
               
            
        }else System.out.println("------------------------------------------------"); 
                System.out.println("Reserva Efetuada com Sucesso!!"); 
                System.out.println("Reserva: " + suite.toString());
                //System.out.println("" + hospedes);
        return true;        
    }
    
    public int getQtDiaria() {
        return qtDiaria;
    }

    public void setQtDiaria(int qtDiaria) {
        this.qtDiaria = qtDiaria;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }  

    public Suite getSuite() {
        return suite;
    }

    public void setSuite(Suite suite) {
        this.suite = suite;               
    }

    public double getValorTotalDesc() {
        return valorTotalDiaria;
    }

    public void setValorTotalDesc(double valorTotalDiaria) {
        this.valorTotalDiaria = valorTotalDiaria;
    }

    public double getValorTotalDiaria() {
        return valorTotalDiaria;
    }

    public void setValorTotalDiaria(double valorTotalDiaria) {
        this.valorTotalDiaria = valorTotalDiaria;
    }

    public Hospede getHospede() {
        return hospede;
    }

    public void setHospede(Hospede hospede) {
        this.hospede = hospede;
    }

    public List<Hospede> getHospedes() {
        return hospedes;
    }

    public void setHospedes(List<Hospede> hospedes) {
        this.hospedes = hospedes;
    }
    
}   