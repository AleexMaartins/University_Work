package Aula02;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Distancia em km: ");
        double km = input.nextDouble();
        double milhas;
        milhas = km / 1.609;
        System.out.printf("Distancia em milhas: " + milhas);
        input.close();

    }

}
/*
 * Escreva um programa que lê um valor real que representa uma distância em
 * quilómetros,
 * converte-o para milhas e imprime o resultado. A fórmula de conversão é a
 * seguinte: Milhas =
 * Quilómetros / 1.609.
 */