package Aula07;

import java.lang.Math;

public abstract class Forma {
    public String cor;

    public abstract double area();

    public abstract double perimetro();

    Forma(String cor) {
        this.setCor();
    }

    public void setCor() {
        String[] corArray = { "vermelho", "verde", "amarelo", "branco", "azul", "roxo" };
        this.cor = corArray[(int) (Math.random() * 6) + 0];
    }

    public String getCor() {
        return this.cor = cor;
    }

}
