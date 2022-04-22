package Aula06;

import Aula05.Date;

public class Aluno extends Pessoa {
    private String iNome;
    private int iBI;
    private Date iDataNasc;
    private Date iDataInsc;
    // escrever private das restantes do aluno
    int nMec = 99;

    Aluno(String iNome, int iBI, Date iDataNasc, Date iDataInsc) {
        super(iNome, iBI, iDataNasc);
        this.iDataInsc = iDataInsc;
    }

    Aluno(String iNome, int iBI, Date iDataNasc) { // nota: neste caso deve assumir a data atual
        super(iNome, iBI, iDataNasc);
    }

    int getNMec() { // retorna o número mecanográfico
        return nMec++;
    }

    String getName() { // retorna o número mecanográfico
        return iNome;
    }

    // ... acrescentar métodos necessários
}