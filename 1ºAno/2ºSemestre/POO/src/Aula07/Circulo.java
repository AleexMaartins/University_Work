package Aula07;

public class Circulo {
	private double radius;

	Circulo(double radius) {
		this.setCirculo3(radius);
	}

	public double perimetro() {
		return 2 * Math.PI * this.radius;
	}

	public double area() {
		return Math.PI * this.radius * this.radius;
	}

	public String toString() {
		return "Circle with radius: " + this.radius;
	}

	public boolean equals(Circulo b) {
		return this.radius == b.getRadius();
	}

	public double getRadius() {
		return this.radius;
	}

	public void setCirculo3(double radius) {
		assert radius > 0;
		this.radius = radius;
	}
}