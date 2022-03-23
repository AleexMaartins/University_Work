package Aula03;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println(
                "Insira um conjunto de valores (separados por 'Enter') terminando com um valor igual ao primeiro inserido. No final sera lhe dado o valor maximo, o valor minimo, a media e o total de numero lidos");
        double primeiro = input.nextDouble();
        double valor = input.nextDouble();
        int qnt = 2;
        double maximo = primeiro;
        double minimo = primeiro;
        double total = primeiro;
        double media;
        while (valor != primeiro) {
            qnt++;
            total = total + valor;
            if (maximo < valor)
                maximo = valor;
            if (minimo > valor)
                minimo = valor;
            valor = input.nextDouble();

        }
        while (valor != primeiro)
            ;
        total = total + valor;

        media = total / qnt;
        System.out.printf("Maximo = %f , Minimo = %f, Media = %f , Total = %f", maximo, minimo, media, total);
        input.close();
    }

}
/*
 * Escreva um programa que leia um conjuntode números reais do teclado,
 * terminadopor um valor igual ao primeiro que foi introduzido. No fim, indique
 * o valor máximo, o valor mínimo, a média e o totalde númerolidos.
 * 
 */