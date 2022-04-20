package Aula06;

import Aula05.Date;

public class Bolseiro extends Aluno {

    private int bolsa;
    int nMec = 99;

    public void Bolsa(String nome, String cc, Date dataNasc, int bolsa) {
        this.bolsa = bolsa;
    }

    public int getBolsa() {
        return bolsa;
    }

    public void setBolsa(int bolsa) {
        this.bolsa = bolsa;
    }

}
