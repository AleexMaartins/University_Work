package Aula10;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Scanner;

public class Ex104 {
    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new FileReader("src/Aula10/words.txt"));
        HashSet<String> sh = new HashSet<>();
        while (input.hasNext()) {
            String palavra = input.nextLine();
            System.out.println(palavra);
            if (palavra.length() > 2) {
                sh.add(palavra);
            }

            if (!palavra.matches("\\D+")) {
                sh.remove(palavra);
            }
        }

        System.out.println("Palavras terminadas em 's'");
        for (String entry : sh) {
            if (entry.charAt(entry.length() - 1) == 's') {
                System.out.println(entry);
            }
        }

        System.out.println("Remoção de palavras que não contenham apenas letras");

        for (String entry : sh) {
            System.out.println(entry);
        }
    }
}