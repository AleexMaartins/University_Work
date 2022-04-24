package Aula06;

import Aula05.Date;

public class Bolseiro extends Aluno {

    private int bolsa;
    int nMec = 99;

    Bolseiro(String iNome, int iBI, Date iDataNasc, int bolsa) {
        super(iNome, iBI, iDataNasc);
        this.bolsa = bolsa;
    }

    public void Bolsa(String nome, String cc, Date dataNasc, int bolsa) {
        this.bolsa = bolsa;
    }

    public int getBolsa() {
        return bolsa;
    }

    public void setBolsa(int newBolsa) {
        this.bolsa = newBolsa;
    }

    public String toString() {
        return String.format("%s; Bolsa: %d", super.toString(), this.bolsa);
    }
}