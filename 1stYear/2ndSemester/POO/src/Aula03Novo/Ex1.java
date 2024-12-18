package Aula03Novo;

import java.util.Scanner;

public class Ex1 {
    public static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        int nr;

        nr = askForAnIntPos();
        System.out.println("A soma de todos os numeros primos ate " + nr + " : " + SomaDeTodosPrimoAteNr(nr));

    }

    private static int SomaDeTodosPrimoAteNr(int nr) {
        int soma = 0;
        for (int i = 1; i <= nr; i++) {
            if (isPrime(i)) {
                soma += i;
            }
        }
        return soma;
    }

    private static boolean isPrime(int nr) {
        if (nr == 1)
            return false;
        for (int i = 2; i < nr; i++) {
            if (nr % i == 0) {
                return false;
            }
        }
        return true;
    }

    private static int askForAnIntPos() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.println("");
                System.out.print("Digite um número inteiro positivo: ");
                nr = input.nextInt();
                check = false;
                if (nr <= 0) {
                    System.out.println("____________________________");
                    System.out.println("Valor digitado nao positivo!!");
                    System.out.println("____________________________");
                    check = true;
                }
            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("Valor digitado nao inteiro!!");
                System.out.println("____________________________");
                input.nextLine();
            }
        }
        return nr;
    }
}

// Escreva um programa que leia do teclado um número inteiro positivo e devolva
// a soma de
// todos os números primos até esse valor (inclusive). Repare que deve validar o
// valor de
// entrada repetindo a leitura se o valor não for válido (positivo).
// Deve implementar uma função que devolva se um número é um número primo. Um
// número
// natural é um número primo quando tem exatamente dois divisores naturais
// distintos: o
// número 1 e ele mesmo.