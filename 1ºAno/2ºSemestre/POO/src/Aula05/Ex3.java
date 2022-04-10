package Aula05;

import java.util.Scanner;

public class Ex3 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        int equals;

        Circulo3 circle[] = new Circulo3[10];
        for (int i = 0; i < circle.length; i++) {
            circle[i] = new Circulo3(Math.floor(Math.random() * 5));
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

        Triangulo3 triangulo3[] = new Triangulo3[10];
        for (int i = 0; i < triangulo3.length; i++) {
            triangulo3[i] = new Triangulo3(Math.floor(Math.random() * 2), Math.floor(Math.random() * 2),
                    Math.floor(Math.random() * 2));
        }
        for (int i = 0; i < triangulo3.length; i++) {
            System.out.printf("%s P: %.2f %.2f\n", triangulo3[i], triangulo3[i].perimetro(), triangulo3[i].area());
        }
        equals = 0;
        for (int i = 0; i < triangulo3.length; i++) {
            if (triangulo3[0].equals(triangulo3[i]))
                equals++;
        }
        System.out.println("Existem " + equals + " triangulos iguais ao primeiro!");

        Retangulo3 retangulo3[] = new Retangulo3[10];
        for (int i = 0; i < retangulo3.length; i++) {
            retangulo3[i] = new Retangulo3(Math.floor(Math.random() * 2), Math.floor(Math.random() * 2));
        }
        for (int i = 0; i < retangulo3.length; i++) {
            System.out.println(
                    retangulo3[i] + " Perimetro: " + retangulo3[i].perimetro() + " Area: " + retangulo3[i].area());
        }
        equals = 0;
        for (int i = 0; i < retangulo3.length; i++) {
            if (retangulo3[0].equals(retangulo3[i]))
                equals++;
        }
        System.out.println("Existem " + equals + " retangulos iguais ao primeiro!");
    }
}