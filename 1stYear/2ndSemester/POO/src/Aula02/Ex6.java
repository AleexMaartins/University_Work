package Aula02;

import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Tempo em segundos: ");
        int total = input.nextInt();
        int horas = total / 3600;
        int minutos = (total % 2400) / 60;
        int segundos = (total % 2400) % 60;

        System.out.print(horas + ":" + minutos + ":" + segundos);
        input.close();
    }
}

/*
 * Escreva um programa que dado um tempo em segundos lido do teclado, mostre na
 * consola o
 * tempo com o formato hh:mm:ss. Sugestão: para calcular o resto da divisão
 * inteira existe o operador %.
 * 
 * 24:60:60
 */