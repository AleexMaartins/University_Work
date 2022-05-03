package Aula07;

import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        int equals;

        Circulo circle[] = new Circulo[10];
        for (int i = 0; i < circle.length; i++) {
            circle[i] = new Circulo(Math.floor(Math.random() * 5));
        }
        for (int i = 0; i < circle.length; i++) {
            System.out.printf("%s P: %.2f %.2f\n", circle[i], circle[i].perimetro(), circle[i].area());
        }
        equals = 0;
        for (int i = 0; i < circle.length; i++) {
            if (circle[0].equals(circle[i]))
                equals++;
        }
        System.out.println("Existem " + equals + " circulos iguais ao primeiro!");

        Triangulo triangulo[] = new Triangulo[10];
        for (int i = 0; i < triangulo.length; i++) {
            triangulo[i] = new Triangulo(Math.floor(Math.random() * 2), Math.floor(Math.random() * 2),
                    Math.floor(Math.random() * 2));
        }
        for (int i = 0; i < triangulo.length; i++) {
            System.out.printf("%s P: %.2f %.2f\n", triangulo[i], triangulo[i].perimetro(), triangulo[i].area());
        }
        equals = 0;
        for (int i = 0; i < triangulo.length; i++) {
            if (triangulo[0].equals(triangulo[i]))
                equals++;
        }
        System.out.println("Existem " + equals + " triangulos iguais ao primeiro!");

        Retangulo retangulo[] = new Retangulo[10];
        for (int i = 0; i < retangulo.length; i++) {
            retangulo[i] = new Retangulo(Math.floor(Math.random() * 2), Math.floor(Math.random() * 2));
        }
        for (int i = 0; i < retangulo.length; i++) {
            System.out.println(
                    retangulo[i] + " Perimetro: " + retangulo[i].perimetro() + " Area: " + retangulo[i].area());
        }
        equals = 0;
        for (int i = 0; i < retangulo.length; i++) {
            if (retangulo[0].equals(retangulo[i]))
                equals++;
        }
        System.out.println("Existem " + equals + " retangulos iguais ao primeiro!");
    }
}