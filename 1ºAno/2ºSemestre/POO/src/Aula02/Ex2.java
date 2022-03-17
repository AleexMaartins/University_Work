package Aula02;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.printf("Graus Celsius: ");
        double Celsius = input.nextDouble();
        double Fahrenheit = 1.8 * Celsius + 32;
        System.out.printf("Graus Fahrenheit= " + Fahrenheit);
        input.close();

    }
}

/*
 * Escreva um programa que lê um valor real que especifica temperatura em graus
 * Célsius,
 * converte-o para graus Fahrenheit e imprime o resultado. A fórmula de
 * conversão de graus
 * Célsius (C) para graus Fahrenheit (F) é a seguinte: F = 1.8 ∗ C + 32.
 * E
 */