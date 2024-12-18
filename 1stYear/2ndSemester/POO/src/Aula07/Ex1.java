package Aula07;

import java.lang.Math;

import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        int equals;
        String cor = new String();
        Circulo circle[] = new Circulo[10];
        for (int i = 0; i < circle.length; i++) {
            circle[i] = new Circulo(cor, Math.floor(Math.random() * 5));
        }
        for (int i = 0; i < circle.length; i++) {
            System.out.printf("|%s Perimetro: %.2f | Area: %.2f|\n", circle[i], circle[i].perimetro(),
                    circle[i].area());
        }
        equals = 0;
        for (int i = 1; i < circle.length; i++) {
            if (circle[0].equals(circle[i]) && circle[0].equalsCor(circle[i]))
                equals++;

        }
        System.out.println("Existem " + equals + " circulos iguais ao primeiro!\n");

        Triangulo triangulo[] = new Triangulo[10];
        for (int i = 0; i < triangulo.length; i++) {
            triangulo[i] = new Triangulo(cor, Math.floor(Math.random() * 2), Math.floor(Math.random() * 2),
                    Math.floor(Math.random() * 2));
        }
        for (int i = 0; i < triangulo.length; i++) {
            System.out.printf("|%s Perimetro: %.2f | Area: %.2f|\n", triangulo[i], triangulo[i].perimetro(),
                    triangulo[i].area());
        }
        equals = 0;
        for (int i = 1; i < triangulo.length; i++) {
            if (triangulo[0].equals(triangulo[i]) && triangulo[0].equalsCor(triangulo[i])) {
                equals++;
            }
        }
        System.out.println("Existem " + equals + " triangulos iguais ao primeiro!\n");

        Retangulo retangulo[] = new Retangulo[10];
        for (int i = 0; i < retangulo.length; i++) {
            retangulo[i] = new Retangulo(cor, Math.floor(Math.random() * 2), Math.floor(Math.random() * 2));
        }
        for (int i = 0; i < retangulo.length; i++) {
            System.out.println(cor +
                    retangulo[i] + " |Perimetro: " + retangulo[i].perimetro() + " |Area: " + retangulo[i].area() + "|");
        }
        equals = 0;
        for (int i = 1; i < retangulo.length; i++) {
            if (retangulo[0].equals(retangulo[i]) && retangulo[0].equalsCor(retangulo[i]))
                equals++;
        }
        System.out.println("Existem " + equals + " retangulos iguais ao primeiro!\n");
    }

}