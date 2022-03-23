package Aula03;

import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int valor;
        do {
            System.out.println("Insira um valor positivo inteiro para verificar se primo: ");
            valor = input.nextInt();
        } while (valor < 0);
        if (valor == 2 || valor == 3 || valor == 5 || valor == 7) {
            System.out.println("Valor primo");
        } else {
            if (valor == 0 || valor == 1 || valor % 2 == 0 || valor % 3 == 0 || valor % 5 == 0 || valor % 7 == 0) {
                System.out.println("Valor nao primo");
            } else
                System.out.println("Valor primo");
        }
        input.close();
    }

}
/*
 * Escreva um programa que leia do teclado um número inteiro positivo e
 * determine se onúmero introduzido é um número primo. Um número natural é um
 * número primo quandotem exatamente dois divisores naturais distintos: o número
 * 1 e ele mesmo. Repare quedeve validar o valor de entrada repetindo a leitura
 * se o valor não for válido (positivo).
 */