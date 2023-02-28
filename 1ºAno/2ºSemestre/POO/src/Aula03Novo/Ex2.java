package Aula03Novo;

import java.util.Scanner;

public class Ex2 {
    public static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {

        int montante = askvalue();
        double tax = asktax();
        int meses = 12;
        double total = montante;
        for (int i = 0; i < meses; i++) {
            System.out.println("Mes " + (i + 1) + ": " + total);
            total += total * (tax / 100);
        }
        System.out.println("Montante final: " + total);
    }
    
    public static double asktax() {
        System.out.print("Taxa entre 0 e 5: ");
        double tax = input.nextDouble();
        while(tax < 0 || tax > 5){
            System.out.println("Valor nao entre 0 e 5");
            tax = input.nextDouble();
        }
    return tax;
    }
    
    public static int askvalue() {
        System.out.print("Montante multiplo de 1000: ");
        int montante = askForAnIntPos();
        while(montante % 1000 != 0){
            System.out.println("Valor nao multiplo de 1000");
            montante = askForAnIntPos();
        }
    return montante;
    }

    private static int askForAnIntPos(){ 
        int nr = 0;
        boolean check = true;
        while(check){
            try {
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
// Um fundo de investimento fornece uma taxa de juros mensal fixa, que acumula
// com o saldo
// anterior do investimento (juros rendem juros). Escreva um programa em Java
// que peça ao
// utilizador o montante investido (positivo e múltiplo de 1000) e a taxa de
// juro mensal (entre
// 0% e 5%). Verifique se os valores são válidos e apresente o valor mensal do
// fundo nos
// próximos 12 meses, imprimindo o valor em cada mês.