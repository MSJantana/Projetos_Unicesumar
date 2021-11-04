/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package br.com.msoft.mapapsII;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Marcio
 * Mapa de Programação de Sistema II
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
            
   //Suite suite1 = new  Suite(20,5,190D,"LUXO");
    //Crio os quartos    
    //ArrayList<Suite> suites = new ArrayList<>();
    Suite suite1 = new Suite();
    suite1.setNumero(10);
    suite1.setTipoSuite("Luxo");
    suite1.setCapacidade(3);
    suite1.setValorDiaria(390D);
    //suites.add(suite1);
    
    Suite suite2 = new Suite();
    suite2.setNumero(11);
    suite2.setTipoSuite("Simples");
    suite2.setCapacidade(3);
    suite2.setValorDiaria(150D);
    //suites.add(suite2);
  /**
    System.out.println("************************");    
    System.out.println("*** Imprimindo Suite ***"); 
    System.out.println("************************");
    System.out.println("Reserva Numero: " + suite1.toString());
    System.out.println("----------------------------------------");
    
    System.out.println("************************");
    System.out.println("*** Imprimindo Suite ***");  
    System.out.println("************************");
    System.out.println("Reserva Numero: " + suite2.toString());
    System.out.println("----------------------------------------");
    */      
                
    Hospede hospede1 = new Hospede();
    hospede1.setNome("Joao da Silva Henrique");
    hospede1.setIdade(43);
    hospede1.setRua("Osasco");
    hospede1.setNumero(188);
    hospede1.setCidade("São Paulo");
    hospede1.setBairro("Carapicuiba");
    hospede1.setEstado("SP");
        
    Hospede hospede2 = new Hospede();
    hospede2.setNome("Maria Benedita Souza");
    hospede2.setIdade(35);
    hospede2.setRua("Osasco");
    hospede2.setNumero(188);
    hospede2.setCidade("São Paulo");
    hospede2.setBairro("Carapicuiba");
    hospede2.setEstado("SP");
        
    Hospede hospede4 = new Hospede();
    hospede4.setNome("Carlos Marighella Henrique");
    hospede4.setIdade(18);
    hospede4.setRua("Osasco");
    hospede4.setNumero(188);
    hospede4.setCidade("Sao Paulo");
    hospede4.setBairro("Carapicuiba");
    hospede4.setEstado("SP");   
       
    Hospede hospede3 = new Hospede();
    hospede3.setNome("Pedro Henrique Souza");
    hospede3.setIdade(2);
    hospede3.setRua("Osasco");
    hospede3.setNumero(188);
    hospede3.setCidade("Sao Paulo");
    hospede3.setBairro("Carapicuiba");
    hospede3.setEstado("SP");   
    
    /**
    ArrayList<Hospede> hospedes = new ArrayList<>();
    hospedes.add(hospede1);
    hospedes.add(hospede2);
    hospedes.add(hospede4);
    hospedes.add(hospede3);
    */ 
    //Crio a lista com todos os hospedes
    List<Hospede> hospedes = new ArrayList<>(Arrays.asList(hospede1,hospede2,hospede3,hospede4));
    /**
    hospedes.stream().filter(h -> {
        return h.getIdade() > 2;
    }).forEach(hosp -> System.out.println(hosp));
    */        
    Reserva reserva = new Reserva();
    /**
        System.out.println("************************");          
        System.out.println("   Dados dos Hospedes   " + hospedes.toString());
        System.out.println("************************");
        System.out.println(" ");*/
        reserva.validaHospede(hospedes, suite1);//Calcula se a quantidade de hospedes cabe na suite, levando em conta crianças menores de 2 anos
        //reserva.verificaCapacidade(suite1,3);//Calcula a quantidade de hospedes para a suite (hospedes, suite1)
        reserva.setQtDiaria(7);//Calcula Quantidade de Diárias.
        reserva.calcularDiaria(suite1); //Calcula Quantidade de Diárias de acordo com a Suite Selecionada.
        reserva.imprimirDiaria(suite1,hospede1);//Imprime o valor da Diária e calcula o desconto caso houver.
    }   
}
