package Aula04;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(System.in);

        System.out.println("Inserir data");
        System.out.println("Insira o mês: ");
        int mes = sc.nextInt();
        System.out.println("Insira o ano: ");
        int ano = sc.nextInt();
        System.out.println("Insira o dia da semana: ");
        int dia = sc.nextInt();

        printCal(mes, ano, dia);

        sc.close();
    }

    public static int diasDoMes(int m, int a) {
        int numDias = 0;
        boolean bissexto;

        if ((a % 400 == 0) || ((a % 4 == 0) && (a % 100 != 0))) {
            bissexto = true;
        } else {
            bissexto = false;
        }

        switch (m) {
            case 1, 3, 5, 7, 8, 10, 12:
                numDias = 31;
                break;
            case 2:
                if (bissexto) {
                    numDias = 29;
                } else {
                    numDias = 28;
                }
                break;
            default:
                numDias = 30;
        }

        return numDias;
    }

    public static void printCal(int m, int a, int d) {

        String[] names = { "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro",
                "Outubro", "Novembro", "Dezembro" };
        int x = d;

        System.out.println("    " + names[m - 1] + " " + a);
        System.out.println("Su Mo Tu We Th Fr Sa");

        // preencher os espaços vazios
        while (d > 0) {
            if (d == 7) {
                break;
            }
            if (d == 0) {
                break;
            }
            System.out.print("   ");
            d--;
        }

        for (int i = 1; i <= diasDoMes(m, a); i++) {
            System.out.printf("%2d ", i);
            x++;
            if (x == 7) {
                x = 0;
                System.out.println();
            }
        }
    }
}