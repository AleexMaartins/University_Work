package Aula02;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.printf("Investido: ");
        double I = input.nextDouble();
        System.out.printf("Taxa de juro mensal (percentagem): ");
        double T = input.nextDouble();
        for (int i = 0; i < 3; i++) {
            I = I + (I * (T / 100));
        }
        System.out.printf("Montante: " + I);

        input.close();
    }
}

/*
 * Um fundo de investimento fornece uma taxa de juros mensal fixa, que acumula
 * com o saldo
 * anterior do investimento (juros rendem juros). Escreva um programa em Java
 * que peça ao
 * utilizador o montante investido e a taxa de juro mensal. Indique o valor
 * total ao final de 3
 * meses. (Por exemplo, para um investimento de 5000 euros e uma taxa de 1% o
 * montante ao fim de 3
 * meses será de 5151.505 euros).
 */