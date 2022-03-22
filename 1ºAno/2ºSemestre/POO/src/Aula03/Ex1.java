package Aula03;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Nota pratica: ");
        double notaP = input.nextDouble();
        System.out.println("Nota teorica: ");
        double notaT = input.nextDouble();
        // %f0.1
        if (notaP > 20 || notaP < 0 || notaT > 20 || notaP < 0)
            System.out.println("Valores introduzidos invalidos, devem pertencer a [0,20] ");

        else {
            if (notaP < 6.95 || notaT < 6.95)
                System.out.println("66 ");
            else {
                double NotaFinal = 0.4 * notaT + 0.6 * notaP;
                System.out.print(" ");

                System.out.printf("Nota final = %.0f", NotaFinal);

            }
        }
        input.close();
    }

}
/*
 * Implemente um programa que leiado teclado, as notas da componente prática
 * (notaP) e teórica (notaT) de um aluno (ambas arredondadas às décimas) e
 * imprima no terminal a nota final, calculada da seguinte forma:
 * 66 (reprovado
 * por nota mínima), se tiver obtido menosdo que 7.0 em pelo menos umadas
 * componentes;
 * 0.4 * notaT+ 0.6 * notaP(arredondada a unidades), nos restantes
 * casos.
 * Nota: Verifique se os valores introduzidos pelo utilizador são válidos
 * [0..20].
 */