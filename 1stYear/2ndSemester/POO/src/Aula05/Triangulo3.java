package Aula05;

public class Triangulo3 {
    private double lado1;
    private double lado2;
    private double lado3;

    Triangulo3(double lado1, double lado2, double lado3) {
        this.setTriangulo3(lado1, lado2, lado3);
    }

    public double perimetro() {
        return lado1 + lado2 + lado3;
    }

    public double area() {
        double s = this.perimetro() / 2;
        return Math.sqrt(s * (s - this.lado1) * (s - this.lado2) * (s - this.lado3));
    }

    public String toString() {
        return "Triangulo com lados: " + this.lado1 + " : " + this.lado2 + " : " + lado3;
    }

    public boolean equals(Triangulo3 b) {
        return this.lado1 == b.getLado1() && this.lado2 == b.getLado2() && this.lado3 == b.getLado3();
    }

    public double getLado1() {
        return this.lado1;
    }

    public double getLado2() {
        return this.lado2;
    }

    public double getLado3() {
        return this.lado3;
    }

    public void setTriangulo3(double lado1, double lado2, double lado3) {
        assert lado1 + lado2 > lado3 || lado2 + lado3 > lado1 || lado1 + lado3 >= lado2;
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }
}