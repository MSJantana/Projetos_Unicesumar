package br.com.msoft.mapapsI;
import java.util.Random;
import javax.swing.JOptionPane;
/**
 *
 * @author Marcio
 * Mapa de Programação de Sistema I
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public final class Paciente {
    
    Random aleatorio = new Random();
    int idpaciente = aleatorio.nextInt(100);
    private String cpf;
    private String nome;
    private String sexo;
    private String idade;
         
    
    public Paciente(){  
        this.cpf = JOptionPane.showInputDialog(null,"Informe o seu CPF: ");
            if (this.cpf.equals("Sair")|| (this.cpf.equals("SAIR")|| (this.cpf.equals("sair")))) {
                JOptionPane.showInternalMessageDialog(null, "Programa Encerrado", "Cadastro Covid-19", JOptionPane.INFORMATION_MESSAGE);
                    System.exit(0);   
        }        
    }
    
    public void imprimirPaciente(){        
        
        JOptionPane.showMessageDialog(null,"""
                                         Paciente cadastrado com Sucesso!
                                         Registro do paciente N\u00ba""" +String.format("%04d", getIdpaciente()) + "\nNome do Paciente: " + getNome()+ "\nSexo: " + getSexo()+ "\nIdade: " + getIdade());
    }
   
    public int getIdpaciente() {
        return idpaciente;
    }

    public void setIdpaciente(int idpaciente) {
        this.idpaciente = idpaciente;
    }
         
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }   
}
