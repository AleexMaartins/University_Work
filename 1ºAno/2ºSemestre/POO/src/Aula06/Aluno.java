package Aula06;

import Aula05.Date;

public class Aluno extends Pessoa {
    private String iNome;
    // escrever private das restantes do aluno
    int nMec = 99;

    Aluno(String iNome, int iBI, Date iDataNasc, Date iDataInsc) {
        super(iNome, iBI, iDataNasc);
        this.iDataInsc = iDataInsc;
    }

    Aluno(String iNome, int iBI, Date iDataNasc) { // nota: neste caso deve assumir a data atual
        this.iNome = iNome;
        this.iBI = iBI;
        this.iDataNasc = iDataNasc;
    }

    int getNMec() { // retorna o número mecanográfico

        return nMec++;
    }

    // ... acrescentar métodos necessários
}