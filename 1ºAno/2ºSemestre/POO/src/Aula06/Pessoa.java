package Aula06;

import Aula05.Date;
import java.util.Scanner;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    Pessoa(String nome, int cc, Date dataNasc) {
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;

    }

    Date d = new Date(5, 10, 1988);
    Pessoa p = new Pessoa();

    String getName() {
        return nome;
    }
}