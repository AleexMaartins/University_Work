package Aula02;

import java.util.Scanner;

public class Ex7 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Insira o valor de x1 = ");
        double x1 = input.nextDouble();
        System.out.print("Insira o valor de y1 = ");
        double y1 = input.nextDouble();
        System.out.print("Insira o valor de x2 = ");
        double x2 = input.nextDouble();
        System.out.print("Insira o valor de y2 = ");
        double y2 = input.nextDouble();

        double distancia = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

        System.out.print("Distancia entre pontos = " + distancia);
        input.close();
    }
}

/*
 * Escreva um programa em Java que represente dois pontos, p1 e p2, pedindo que
 * o utilizador
 * introduza as suas coordenadas reais x e y. Calcule e imprima a distância
 * entre os pontos.
 * Sugestão: para calcular a raiz quadrada use a função Math.sqrt
 */