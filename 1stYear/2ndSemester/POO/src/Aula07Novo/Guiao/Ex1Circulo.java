package Aula07Novo.Guiao;

public class Ex1Circulo extends Ex1Forma {
	private double valor1;

	Ex1Circulo(String cor, double valor1) {
		super(cor);
		this.setCirculo(valor1);

	}

	public double perimetro() {
		return 2 * Math.PI * this.valor1;
	}

	public double area() {
		return Math.PI * this.valor1 * this.valor1;
	}

	public String toString() {
		return "Circulo com raio: " + this.valor1 + " |Cor: " + super.getCor() + " |";
	}

	public boolean equals(Ex1Circulo b) {
		return this.valor1 == b.getRadius();
	}

	public boolean equalsCor(Ex1Circulo b) {
		return this.cor == b.getCor();
	}

	public double getRadius() {
		return this.valor1;
	}

	public String getCor() {
		return this.cor;
	}

	public void setCirculo(double radius) {
		assert radius > 0;
		this.valor1 = radius;
	}

}