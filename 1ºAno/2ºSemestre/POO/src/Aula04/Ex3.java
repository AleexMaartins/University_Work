package Aula04;

import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Insert acronym: ");

        String[] words = input.nextLine().split(" ");
        String acronimo = "";

        for (int i = 0; i < words.length; i++) {
            if (words[i].length() >= 3)
                acronimo += words[i].charAt(0);

        }
        System.out.println("Acronimo: " + acronimo);

        input.close();
    }

}
/*
 * Escreva um programa que leia do teclado uma frase e que apresente o seu
 * acrónimo.
 * Considere que as iniciais de palavras com dimensão inferior a 3 caracteres
 * não farão parte do
 * acrónimo
 */