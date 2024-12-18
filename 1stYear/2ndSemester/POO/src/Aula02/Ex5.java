package Aula02;

import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.printf("V1: ");
        double v1 = input.nextDouble();
        System.out.printf("V2: ");
        double v2 = input.nextDouble();
        System.out.printf("D1: ");
        double d1 = input.nextDouble();
        System.out.printf("D2: ");
        double d2 = input.nextDouble();

        double velocidade = (d1 + d2) / ((d1 / v1) + (d2 / v2));
        System.out.printf("Velocidade media = " + velocidade);

        input.close();
    }
}
/*
 * Pretende-se calcular a velocidade média de transporte do ponto A para o ponto
 * B sendo a
 * viagem feita em duas etapas, cujo comprimento pode ser diferente. Escreva um
 * programa que
 * solicite a inserção da velocidade (v1) e distância (d1) percorrida no
 * primeiro trajeto, bem
 * como a velocidade (v2) e a distância (d2) percorrida no segundo trajeto. Com
 * base nestes
 * valores calcule e imprime a velocidade média final.
 */