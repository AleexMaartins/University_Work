package Aula04;

import java.util.Scanner;

public class Ex2 {
    // conte o número de carateres numéricos (0..9) da string
    public static int countDigits(String s) {

        try {
            double d = Double.parseDouble(s);
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;

    }

    // quantos espaços contem a string
    public static int countSpaces(String s) {

    }

    // Indique se só contem minusculas
    public static Boolean checkLowerCase(String s) {

    }

    // substituir varios espaços por apenas 1 unico espaço
    public static int reduceSpaces(String s) {

    }

    // verificar se palindromo
    public static int checkPalindromo(String s) {

    }

    /*
     * int numericos=0;
     * boolean minusculo = true;
     * boolean palindromo = true;
     * for(int i = 0; i<s.length ; i++){
     * total++;
     * if(carater i != carater s.length-i){
     * palindromo = false;}
     * if(carateres a cima de x limite tipo 300)
     * numericos++ ;
     * if(carater = " ")
     * espaco++
     * while//talvez enquanto carater a carater copia para uma nova string e quando
     * é detetado um espaço entra num ciclo while {(carater!= null ou " ")nao
     * escrever na nova string}
     * if(maiusculo){
     * minusculo = false;}
     * }
     * System.out.printf(" Total de carateres: "+total);
     * System.out.printf(" Total de numericos: "+numericos);
     * 
     */

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.printf("Insert string: ");
        String s = new String(input.nextLine());
        while (s == null)
            System.out.println("Invalid string");

        System.out.printf("Number of numeric characters: " + countDigits(s));
        System.out.printf("Number of spaces: " + countSpaces(s));
        System.out.printf("Check if string is in lowerCase: " + checkLowerCase(s));
        System.out.printf("String with only one space in between words: " + reduceSpaces(s));
        System.out.printf("Check if palindrome: " + checkPalindromo(s));

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