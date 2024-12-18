package Aula05;

public class Circulo3 {
	private double radius;

	Circulo3(double radius) {
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

	public boolean equals(Circulo3 b) {
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