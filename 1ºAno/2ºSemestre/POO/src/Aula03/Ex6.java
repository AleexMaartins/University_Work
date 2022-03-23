package Aula03;

import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean bissexto = false;
        int dias;
        System.out.print("Introduza o ano: ");
        int ano = sc.nextInt();

        System.out.print("Introduza o mês(número): ");
        int mes = sc.nextInt();

        // ver se o ano é bissexto
        if ((ano % 400 == 0) || ((ano % 4 == 0) && (ano % 100 != 0))) {
            bissexto = true;
        } else {
            bissexto = false;
        }
        /////////////////

        if (bissexto) {
            switch (mes) {
                case 4:
                case 6:
                case 9:
                case 11:
                    dias = 30;
                    break;
                case 2:
                    dias = 29;
                    break;
                default:
                    dias = 31;
            }
            System.out.printf("O mês %d tem %d dias.\n", mes, dias);
        } else {
            switch (mes) {
                case 4:
                case 6:
                case 9:
                case 11:
                    dias = 30;
                    break;
                case 2:
                    dias = 28;
                    break;
                default:
                    dias = 31;
            }
            System.out.printf("O mês %d tem %d dias.\n", mes, dias);
        }
        sc.close();
    }
}
/*
 * Escreva um programa que lê do teclado uma data composta pelo mês e o ano
 * (validando-os), calcule e escreva no monitor o número de dias desse mês.
 * Nota: não se esqueça dos anos bissextos.
 */