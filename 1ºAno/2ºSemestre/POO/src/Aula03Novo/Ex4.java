package Aula03Novo;

import java.util.Scanner;
import java.lang.Math;

public class Ex4 {
    public static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        double notaT, notaP, media;
        int j;
        int totalAlunos = askForAnIntPos();
        double notas[][] = new double[totalAlunos][3];

        for (int i = 1; i < totalAlunos + 1; i++) {
            System.out.println("Digite as notas entre 0 e 20 do aluno " + i + ".");
            System.out.print("Teorica: ");
            notaT = askForADouble();
            System.out.print("Pratica: ");
            notaP = askForADouble();

            media = 0.4 * notaT + 0.6 * notaP;
            media = Math.round(media);

            j = i - 1;
            notas[j][0] = notaT;
            notas[j][1] = notaP;
            notas[j][2] = media;
        }

        System.out.println("NotaT    NotaP    Pauta");
        for (int i = 0; i < totalAlunos; i++) {
            System.out.println(notas[i][0] + "      " + notas[i][1] + "      " + notas[i][2] + "      ");

        }

    }

    private static int askForAnIntPos() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Quantidade de alunos na turma: ");
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

    private static double askForADouble() {
        double nr = 0;
        boolean check = true;
        while (check) {
            try {
                nr = input.nextDouble();

                while (nr < 0 || nr > 20) {
                    System.out.println("A NOTA TEM QUE SER ENTRE 0 e 20.");
                    System.out.print("Nota corrigida: ");
                    nr = input.nextDouble();
                }

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
