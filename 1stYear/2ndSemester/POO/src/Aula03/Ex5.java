package Aula03;

import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Montante Investido ( positivo e multiplo de 1000): ");
        double investido = input.nextDouble();
        if (investido < 0 || investido % 1000 != 0)
            System.exit(0);
        System.out.println("Taxa de Juro Mensal (entre [0%,5%])): ");
        double taxa = input.nextDouble();
        if (taxa < 0 || taxa > 5)
            System.exit(0);
        for (int i = 1; i <= 12; i++) {
            investido = investido + (investido * (taxa / 100));
            System.out.printf("Valor mensal no Mes %d: %.2f ", i, investido);
            System.out.println("");

        }
        input.close();
    }

}
/*
 * Um fundo de investimento fornece uma taxa de juros mensal fixa, que acumula
 * com o saldo anterior do investimento (jurosrendem juros). Escreva um programa
 * em Java que peça ao utilizador o montante investido (positivo e múltiplo de
 * 1000) ea taxa de juro mensal(entre 0%e 5%). Verifique se os valores são
 * válidos e apresenteo valor mensal do fundo nos próximos 12 meses, imprimindo
 * o valor emcada mês
 */