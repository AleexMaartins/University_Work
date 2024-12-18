package Aula06Novo;

import Aula06Novo.Ex1DateYMD;

public class Ex1Bolseiro extends Ex1Aluno{
    private int valorBolsa;
    private Ex1Professor orientador;
    
    public Ex1Bolseiro(String name, int cc, Ex1DateYMD DataNasc,Ex1Professor orientador, int valorBolsa){
        super(name, cc, DataNasc);
        this.valorBolsa = valorBolsa;
        this.orientador = orientador;
    }

    public int getValorBolsa() {
        return valorBolsa;
    }

    public void setValorBolsa(int valorBolsa) {
        this.valorBolsa = valorBolsa;
    }

    public Ex1Professor getOrientador() {
        return orientador;
    }

    public void setOrientador(Ex1Professor orientador) {
        this.orientador = orientador;
    }

    @Override
    public String toString() {
        return "Bolseiro [orientador = " + orientador + ", valorBolsa = " + valorBolsa + "]";
    }


}