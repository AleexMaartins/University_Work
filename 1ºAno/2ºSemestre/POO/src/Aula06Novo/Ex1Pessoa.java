package Aula06Novo;

import Aula05Novo.Ex1DateYMD;

public class Ex1Pessoa {
    private String nome;
    private int cc;
    private Ex1DateYMD DataNasc;
    
    public Ex1Pessoa(String nome, int cc, Ex1DateYMD DataNasc){
        this.nome = nome;
        this.cc = cc;
        this.DataNasc = new Ex1DateYMD(DataNasc.getDay(), DataNasc.getMonth(), DataNasc.getYear());                                                                    );
    }



}
