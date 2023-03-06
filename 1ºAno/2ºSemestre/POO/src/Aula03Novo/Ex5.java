package Aula03Novo;
import java.util.Scanner;

public class Ex5 {
    public static Scanner input = new Scanner(System.in);
    public static void main(String[] args) {
    
        int mes = askForMonth();
    }


private static int askForMonth() {
    int nr = 0;
    boolean check = true;
    while (check) {
        try {
            System.out.print("Digite um número inteiro entre 1 e 12: ");
            nr = input.nextInt();
            check = false;
            if (nr <1 || nr>12 ) {
                System.out.println("____________________________");
                System.out.println("Valor digitado nao esta dentro do limite!!");
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