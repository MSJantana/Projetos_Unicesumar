package br.com.msoft.mapapsI;

import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Marcio
 * Mapa de Programação de Sistema I
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        while (true) {      
        Paciente paciente = new Paciente(); 
        List<Paciente> pacientes = new ArrayList<>(); 
        
        String[] escolha = {"Masculino","Feminino"};                               
                paciente.setNome(JOptionPane.showInputDialog(null,"Informe o seu Nome: "));
                paciente.setSexo((String)JOptionPane.showInputDialog(null, "Sexo","Sexo",JOptionPane.QUESTION_MESSAGE,null, escolha, escolha[1]));
                paciente.setIdade(JOptionPane.showInputDialog(null,"Informe a sua idade: "));  
        pacientes.add(paciente);
      
        Sintomas sintomas  = new Sintomas();
        sintomas.questionarioPaciente();
          
             
            for (int i = 0; i < pacientes.size(); i++) {
                pacientes.get(i).imprimirPaciente();                
            } 
        sintomas.resultadoPaciente();
        }
     }  
}

       
