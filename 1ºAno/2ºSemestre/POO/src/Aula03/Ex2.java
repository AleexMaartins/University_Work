package Aula03;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Insira um valor positivo inteiro para realizar a contagem decrescente: ");
        int N = input.nextInt();
        if (N > 0)
            do {
                N--;

                System.out.println(N);
            } while (N != 0);
        input.close();
    }

}
/*
 * Escreva um programa que imprima uma contagem decrescente (até 0) a partir de
 * umvalor positivo N, introduzido pelo utilizador através do teclado.
 * 
 */