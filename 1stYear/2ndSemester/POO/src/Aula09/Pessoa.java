package Aula09;

import Aula05.Date;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    public Pessoa(String nome, int cc, Date dataNasc) {
        assert nome.length() > 0 && cc > 0;
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public String getName() {
        return this.nome;
    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d; Data de Nascimento: %s", this.nome, this.cc, this.dataNasc);
    }
}