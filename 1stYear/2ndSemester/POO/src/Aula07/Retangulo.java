package Aula07;

public class Retangulo extends Forma {
    private double valor1;
    private double valor2;

    Retangulo(String cor, double valor1, double valor2) {
        super(cor);
        this.setRetangulo(valor1, valor2);

    }

    public double perimetro() {
        return valor1 * 2 + valor2 * 2;
    }

    public double area() {
        return valor1 * valor2;
    }

    public String toString() {
        return "|Retangulo com lados: " + this.valor1 + " e " + this.valor2 + " |cor: " + super.getCor();

    }

    public boolean equals(Retangulo b) {
        return this.valor1 == b.getComprimento() && this.valor2 == b.getAltura();
    }

    public boolean equalsCor(Retangulo b) {
        return this.cor == b.getCor();
    }

    public double getComprimento() {
        return this.valor1;
    }

    public double getAltura() {
        return this.valor2;
    }

    public void setRetangulo(double comprimento, double altura) {
        assert comprimento > 0 && altura > 0;
        this.valor1 = comprimento;
        this.valor2 = altura;
    }

}