package Aula10;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Ex103 {
    public static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {

        Map<Character, ArrayList<Integer>> mapa = new HashMap<>();

        System.out.print("Introduza uma palavra ou frase: ");
        String word = sc.nextLine();

        for (int i = 0; i < word.length(); i++) {
            if (!mapa.containsKey(word.charAt(i))) {
                ArrayList<Integer> newList = new ArrayList<>();
                mapa.put(word.charAt(i), newList);
                mapa.get(word.charAt(i)).add(i);
            } else {
                mapa.get(word.charAt(i)).add(i);
            }
        }

        for (Map.Entry<Character, ArrayList<Integer>> entry : mapa.entrySet()) {
            System.out.println("Chave = " + entry.getKey() + ", Valor = " + entry.getValue());
        }

    }
}