package Aula03;

import java.util.Scanner;
import java.util.Random;
import java.lang.Math;

public class Ex8 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double[][] notas = new double[16][2];
        Random r = new Random();
        int media;
        System.out.println("    NotaT           Nota TP            Pauta");
        for (int i = 0; i < 16; i++) {
            r = new Random();
            notas[i][0] = r.nextDouble(20 - 0) + 0;
            notas[i][1] = r.nextDouble(20 - 0) + 0;
            if (notas[i][1] < 6.95 || notas[i][1] < 6.95)
                media = 66;
            else
                media = (int) Math.round((notas[i][1] + notas[i][0]) / 2);
            System.out.printf("%8.1f         %8.1f          %8d\n", notas[i][0], notas[i][1], media);

        }
        input.close();
    }

}
/*
 * Altere o programa do exercício 1 de modo que seja possível processar todos os
 * alunos de uma turma que tem 16 alunos. Crie um vetor bidimensional para
 * armazenar as notas de componentes teórica e prática de todos os alunos e
 * preenche-o com valores aleatórios (mas válidos, i.e. as notas podem variar de
 * 0.0 a 20.0). De seguida processe as notas e imprima os resultados em formato
 * seguinte
 */