package Aula03;

import java.util.Scanner;
import java.util.Random;

public class Ex7 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String resposta = "";

        do {
            Random r = new Random();
            int aleatorio = r.nextInt(100 - 1) + 1;
            System.out.println("Escolha um valor entre 1 e 100 ate acertar no correto: ");
            int tentativa = input.nextInt();
            int qnt = 1;
            while (tentativa != aleatorio) {
                qnt++;
                if (tentativa < aleatorio) {

                    System.out.println("Demasiado baixo! Tenta outra vez: ");
                    tentativa = input.nextInt();
                } else {
                    System.out.println("Demasiado alto! Tenta outra vez: ");
                    tentativa = input.nextInt();
                }
            }
            System.out.printf("ACERTOU!! Com apenas %d tentativas! ", qnt);
            System.out.println("Pretende continuar? Prima(S)im");
            resposta = input.next();
        } while (resposta.equals("Sim") || resposta.equals("S"));
        input.close();
    }

}
