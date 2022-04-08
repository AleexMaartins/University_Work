package Aula04;

import java.util.Scanner;

public class Ex2 {

    // conta o número de carateres numéricos (0..9) da string
    public static int countDigits(String s) {
        int charCount = 0;
        System.out.println("");
        for (int i = 0; i < s.length(); i++) {
            if (Character.isDigit(s.charAt(i)))
                charCount++;
        }
        return charCount;
    }

    // quantos espaços contem a string
    public static int countSpaces(String s) {
        int count = 0;
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch == ' ') {
                count++;
            }
        }
        return count;
    }

    // Indique se só contem minusculas
    public static Boolean checkLowerCase(String s) {
        String lil = new String(s.toLowerCase());
        if (lil.equals(s))
            return true;
        else
            return false;
    }

    // substituir varios espaços por apenas 1 unico espaço
    public static String reduceSpaces(String s) {
        String newString = s.trim().replaceAll(" +", " ");

        return newString;

    }

    // verificar se palindromo
    public static Boolean checkPalindromo(String s) {
        String newString = "";
        for (int i = s.length() - 1; i >= 0; i--) {
            newString += s.charAt(i);

        }
        System.out.println("String written in reverse: " + newString);
        if (newString.equals(s)) {
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.printf("Insert string: ");
        String s = new String(input.nextLine());
        while (s == null)
            System.out.println("Invalid string");

        System.out.printf("Number of numeric characters: " + countDigits(s));
        System.out.println();
        System.out.printf("Number of spaces: " + countSpaces(s));
        System.out.println();
        System.out.printf("Check if string is in lowerCase: " + checkLowerCase(s));
        System.out.println();
        System.out.printf("String with only one space in between words: " + reduceSpaces(s));
        System.out.println();
        System.out.printf("Check if palindrome: " + checkPalindromo(s));
        System.out.println();
        input.close();
    }

}
/*
 * Construa um programa que leia uma frase. Adicionalmente, construa métodos
 * estáticos e useos na função main, para realizar cada uma das operações
 * seguintes:
 * • conte o número de carateres numéricos (0..9) da String;
 * Ex: public static int countDigits(String s){…}
 * • conte quantos espaços contém;
 * • indique se só contém minúsculas;
 * • devolva uma String, onde todas as ocorrências de vários espaços seguidos
 * são
 * substituídas por um único espaço;
 * • indique se a String é um palíndromo.
 */