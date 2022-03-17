package Aula02;

import java.util.Scanner;
import java.lang.Math;

public class Ex8 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Insira o valor do cateto A = ");
        double A = input.nextDouble();
        System.out.print("Insira o valor do cateto B = ");
        double B = input.nextDouble();

        double C = Math.sqrt((B) * (B) + (A) * (A));
        double grau = Math.toDegrees(Math.acos(A / C));
        System.out.printf("Hipotenusa = %.4f ", C);
        System.out.println();
        System.out.printf("Grau entre cateto A e hipotenusa C = %.4f ", grau);

        input.close();
    }
}

/*
 * Dado um triângulo retângulo de catetos A e B e hipotenusa C, escreva um
 * programa que leia
 * o valor dos catetos e determine o valor da hipotenusa, bem como o valor do
 * ângulo (em
 * graus) entre o lado A e a hipotenusa.
 */
