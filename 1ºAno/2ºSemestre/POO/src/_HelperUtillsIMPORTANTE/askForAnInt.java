package _HelperUtillsIMPORTANTE;

import java.util.Scanner;

public class askForAnInt {
    public static Scanner input = new Scanner(System.in);
    // scanner estatico para todas as funçoes o usarem

    ////////////////////////// JUST AN INT
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
    //////////////////////////

    ////////////////////////// INT POSITIVO
    private static int askForAnIntPos() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Digite um número inteiro positivo: ");
                nr = input.nextInt();
                if (nr <= 0) {
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Valor digitado nao positivo!!");
                    System.out.println("____________________________");
                    System.out.println("");
                    continue;
                }
                check = false;

            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Valor digitado nao inteiro!!");
                System.out.println("____________________________");
                System.out.println("");
                input.nextLine();
            }
        }
        return nr;
    }
    //////////////////////////

}
