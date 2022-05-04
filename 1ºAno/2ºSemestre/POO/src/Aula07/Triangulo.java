package Aula07;

public class Triangulo extends Forma {
    private double valor1;
    private double valor2;
    private double valor3;

    Triangulo(String cor, double valor1, double valor2, double valor3) {
        super(cor);
        this.setTriangulo(valor1, valor2, valor3);

    }

    public double perimetro() {
        return valor1 + valor2 + valor3;
    }

    public double area() {
        double s = this.perimetro() / 2;
        return Math.sqrt(s * (s - this.valor1) * (s - this.valor2) * (s - this.valor3));
    }

    public String toString() {
        return "Triangulo com lados: " + this.valor1 + " e " + this.valor2 + " e " + valor3 + " |cor: " + super.getCor()
                + " |";

    }

    public boolean equals(Triangulo b) {
        return this.valor1 == b.getLado1() && this.valor2 == b.getLado2() && this.valor3 == b.getLado3();
    }

    public boolean equalsCor(Triangulo b) {
        return this.cor == b.getCor();
    }

    public double getLado1() {
        return this.valor1;
    }

    public double getLado2() {
        return this.valor2;
    }

    public double getLado3() {
        return this.valor3;
    }

    public void setTriangulo(double lado1, double lado2, double lado3) {
        assert lado1 + lado2 > lado3 || lado2 + lado3 > lado1 || lado1 + lado3 >= lado2;
        this.valor1 = lado1;
        this.valor2 = lado2;
        this.valor3 = lado3;
    }

}