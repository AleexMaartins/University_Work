package HelperUtills;

import java.util.Scanner;

public class getRandom {
    public static Scanner input = new Scanner(System.in);

    private static int getRandom() {
        // define the range
        int max = 100;
        int min = 1;
        int range = max - min + 1;
        int correto = 0;
        // generate random numbers within 1 to 10
        correto = (int) (Math.random() * range) + min;
        System.out.println("O numero a adivinhar é: " + correto);
        return correto;
    }
}
