package Aula07;

import java.util.*;

public class Ex2b {
    public static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        int op;
        Date d1 = new DateND(0);
        do {
            printMenu();
            op = input.nextInt();
            switch (op) {
                case 1:
                    d1 = setNewDate();
                    break;
                case 2:
                    System.out.println(d1.toString());
                    break;
                case 3:
                    d1.increment();
                    break;
                case 4:
                    d1.decrement();
                    break;
            }
        } while (op != 0);
    }

    public static void printMenu() {
        System.out.println("\n\nDate operations:");
        System.out.println("1 - create new date");
        System.out.println("2 - show current date");
        System.out.println("3 - increment date");
        System.out.println("4 - decrement date");
        System.out.println("0 - exit");
    }

    public static DateND setNewDate() {
        System.out.println("Day: ");
        int day = input.nextInt();
        System.out.println("Month: ");
        int month = input.nextInt();
        System.out.println("Year: ");
        int year = input.nextInt();
        return new DateYMD(day, month, year).ymdToNd();
    }
}