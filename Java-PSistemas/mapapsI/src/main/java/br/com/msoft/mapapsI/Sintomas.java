package br.com.msoft.mapapsI;

import javax.swing.JOptionPane;

/**
 *
 * @author Marcio
 * Mapa de Programação de Sistema I
 * RA: 19102877-5
 * CURSO - BACHARELADO EM ENGENHARIA DE SOFTWARE
 */
public class Sintomas {
    
    private String febre;
    private String dorCabeca;
    private String espirro;
    private String dorGarganta;
    private String tosseSeca;
    private String dificuldadeRespiratoria;
    private String dorCorpo;
    private String diarreia;
    private String contatoCovid19;
    private String aglomeracao;
    private double pontuacao;
    
    public Sintomas(){
        this.febre = JOptionPane.showInputDialog(null, " Tem Febre? (S para sim, N para não) ");
        this.dorCabeca = JOptionPane.showInputDialog(null, "Tem dor de Cabeça? (S para sim , N para não)");
        this.espirro = JOptionPane.showInputDialog(null, "Tem secreção nasal ou espirros? (S para sim, N para não) ");
        this.dorGarganta = JOptionPane.showInputDialog(null,"Tem dor/irritação na garganta? (S para sim, N para não) ");
        this.tosseSeca = JOptionPane.showInputDialog(null,"Tem tosse seca? (S para sim, N para não) ");
        this.dificuldadeRespiratoria = JOptionPane.showInputDialog(null,"Tem dificuldade respiratória(S para sim, N para não) ");
        this.dorCorpo = JOptionPane.showInputDialog(null,"Tem dores no corpo? (S para sim, N para não) ");
        this.diarreia = JOptionPane.showInputDialog(null,"Tem diarréia? (S para sim, N para não) ");
        this.contatoCovid19 = JOptionPane.showInputDialog(null,"Esteve em contato, nos últimos 14 dias, com algum caso diagnosticado com COVID-19? (S para sim, N para não) ");
        this.aglomeracao = JOptionPane.showInputDialog(null,"Esteve em locais com grande aglomeração? (S para sim, N para não) ");     
        
    }
    
    public void questionarioPaciente(){
        if (this.febre.equals("s")||(this.febre.equals("S"))) {
            this.pontuacao +=5;            
        }
        if (this.dorCabeca.equals("s")||(this.dorCabeca.equals("S"))) {
            this.pontuacao +=1;            
        } 
        if (this.espirro.equals("s")|| (this.espirro.equals("S"))) {
           this.pontuacao +=1;          
        }
        if (this.dorGarganta.equals("s")||(this.dorGarganta.equals("S"))) {
            this.pontuacao +=1;            
        }
        if (this.tosseSeca.equals("s")||(this.tosseSeca.equals("S"))) {
            this.pontuacao +=3;            
        }
        if (this.dificuldadeRespiratoria.equals("s")||(this.dificuldadeRespiratoria.equals("S"))) {
            this.pontuacao +=10;           
        }
        if (this.dorCorpo.equals("s")||(this.dorCorpo.equals("S"))) {
            this.pontuacao +=1;            
        }
        if (this.diarreia.equals("s")||(this.diarreia.equals("S"))) {
            this.pontuacao +=1;            
        }
        if (this.contatoCovid19.equals("s")||(this.contatoCovid19.equals("S"))) {
            this.pontuacao +=10;            
        }
        if (this.aglomeracao.equals("s")||(this.aglomeracao.equals("S"))) {
            this.pontuacao +=3;            
        }
    }
    
    public void resultadoPaciente(){
        if (pontuacao <=9 ) {
            JOptionPane.showMessageDialog(null, "Favor Dirigir-se a Ala Azul (Risco Baixo!!!)");            
        }
        if (pontuacao >=10 && pontuacao <=19) {
            JOptionPane.showInternalMessageDialog(null, "Favor Dirigir-se a Ala Amarela (Risco Médio!!!)", "Alerta", JOptionPane.WARNING_MESSAGE);  
        }
        if (pontuacao >= 20) {
            JOptionPane.showInternalMessageDialog(null, "Favor Dirigir-se a Ala Vermelha (Risco Alto!!!)", "Alerta", JOptionPane.ERROR_MESSAGE);
        }        
    }
    
    public String getFebre() {
        return febre;
    }

    public void setFebre(String febre) {
        this.febre = febre;
    }

    public String getDorCabeca() {
        return dorCabeca;
    }

    public void setDorCabeca(String dorCabeca) {
        this.dorCabeca = dorCabeca;
    }

    public String getEspirro() {
        return espirro;
    }

    public void setEspirro(String espirro) {
        this.espirro = espirro;
    }

    public String getTosseSeca() {
        return tosseSeca;
    }

    public void setTosseSeca(String tosseSeca) {
        this.tosseSeca = tosseSeca;
    }

    public String getDificuldadeRespiratoria() {
        return dificuldadeRespiratoria;
    }

    public void setDificuldadeRespiratoria(String dificuldadeRespiratoria) {
        this.dificuldadeRespiratoria = dificuldadeRespiratoria;
    }

    public String getDorCorpo() {
        return dorCorpo;
    }

    public void setDorCorpo(String dorCorpo) {
        this.dorCorpo = dorCorpo;
    }

    public String getDiarreia() {
        return diarreia;
    }

    public void setDiarreia(String diarreia) {
        this.diarreia = diarreia;
    }

    public String getContatoCovid19() {
        return contatoCovid19;
    }

    public void setContatoCovid19(String contatoCovid19) {
        this.contatoCovid19 = contatoCovid19;
    }

    public String getAglomeracao() {
        return aglomeracao;
    }

    public void setAglomeracao(String aglomeracao) {
        this.aglomeracao = aglomeracao;
    }   

    public double getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(double pontuacao) {
        this.pontuacao = pontuacao;
    }
    
    public String getDorGarganta() {
        return dorGarganta;
    }

    public void setDorGarganta(String dorGarganta) {
        this.dorGarganta = dorGarganta;
    }
}
