package Aula03Novo;

import java.util.Scanner;

public class Ex3 {
    public static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {

        int tentativa = askForAnInt();
        int correto = getRandom();
        while (tentativa != correto) {
            if (tentativa < correto) {
                System.out.println();
                System.out.println("O numero é maior. Tente outra vez. ");
                tentativa = askForAnInt();
            } else {
                System.out.println();
                System.out.println("O numero é menor. Tente outra vez. ");
                tentativa = askForAnInt();
            }
        }
        System.out.println("Parabéns, acertou!");
    }

    private static int getRandom() {
        // define the range
        int max = 100;
        int min = 1;
        int range = max - min + 1;
        int correto = 0;
        // generate random numbers within 1 to 10
        correto = (int) (Math.random() * range) + min;
        System.out.println("O numero a adivinhar é: " + correto);
        return correto;
    }

    private static int askForAnInt() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Digite um número inteiro: ");
                nr = input.nextInt();
                check = false;
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