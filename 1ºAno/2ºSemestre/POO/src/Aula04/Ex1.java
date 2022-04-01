package Aula04;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("String: ");
        String letras = new String();
        letras = input.nextLine();
        // Criar copia da string para ser possivel fazer a contagem de carateres sem os
        // espaços afetarem os resultados
        String noSpace = new String(letras.replaceAll(" ", ""));
        System.out.println("String with no spaces = " + noSpace);

        // verificar se há espaços na string indicada
        if (letras.equals(noSpace))
            System.out.println("There were detected no spaces in between words. ");
        else
            System.out.println("There were detected spaces in between words. ");

        // uma nova frase, convertida para minúsculas; (toLowerCase)
        String lil = new String(letras.toLowerCase());
        System.out.printf("String in lowercase: " + lil);
        System.out.println();

        // o último carater da frase; (.charAt())
        char character = noSpace.charAt(noSpace.length() - 1);
        System.out.printf("The last character you typed was \"%s\" ", character);
        // os 3 primeiros carateres.(.charAt())
        for (int i = 0; i < 3; i++) {
            character = noSpace.charAt(i);
            System.out.println();
            System.out.printf("The character number %d is '%s' ", i + 1, character);
        }
        System.out.println();
        // Utilize ainda outros métodos da classe String (no mínimo, mais três)
        // - .replaceAll()
        // - .indexOf()
        // - equals()

        if (letras.indexOf('.') + 1 != 0)
            System.out.printf("The first \".\" was typed in the %d position", letras.indexOf('.') + 1);
        else
            System.out.printf("There were no \".\" typed ");
        input.close();

    }

}
/*
 * Construa um programa que leia uma String (uma palavra, frase ou parágrafo) e
 * que apresente,
 * usando exclusivamente métodos da classe String:
 * • uma nova frase, convertida para minúsculas;
 * • o último carater da frase;
 * • os 3 primeiros carateres.
 * • Utilize ainda outros métodos da classe String (no mínimo, mais três) e *
 * verifique o seu
 * resultado no programa.
 */