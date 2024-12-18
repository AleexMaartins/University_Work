package Aula02;

import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.printf("Quantidade de água em kg: ");
        double M = input.nextDouble();
        System.out.printf("Temperatura incial: ");
        double I = input.nextDouble();
        System.out.printf("Temperatura final: ");
        double F = input.nextDouble();

        double Q = M * (F - I) * 4184;
        System.out.printf("Energia= " + Q);
        input.close();

    }
}

/*
 * Escreva um programa que calcule a energia necessária para aquecer a água
 * desde uma
 * temperatura inicial até uma temperatura final. O programa deve ler a
 * quantidade de água M
 * (em quilogramas), e as temperaturas inicial e final da água (em graus
 * Celsius). A fórmula para
 * calcular a energia Q (em Joules) é dada por:
 * Q = M * (finalTemperature - initialTemperature) * 4184.
 */