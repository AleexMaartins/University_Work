package _HelperUtillsIMPORTANTE;

import java.util.Scanner;

public class askForADouble {
    public static Scanner input = new Scanner(System.in);
    // scanner estatico para todas as funçoes o usarem

    ////////////////////////// JUST A DOUBLE
    private static double askForADouble() {
        double nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Digite um número: ");
                nr = input.nextDouble();
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

}
