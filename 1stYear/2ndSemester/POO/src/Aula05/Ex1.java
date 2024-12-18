package Aula05;

import java.io.IOException;

import java.util.Scanner;

public class Ex1 {
    public static final Scanner input = new Scanner(System.in);

    public static int askOperation(int operation) {
        System.out.println("__________________________________________________________");

        System.out.println("Date operation: ");
        System.out.println("1 - create new date ");
        System.out.println("2 - show current date ");
        System.out.println("3 - increment date ");
        System.out.println("4 - decrement date ");
        System.out.println("0 - exit ");
        System.out.print("Input the number of the desired operation: ");
        operation = input.nextInt();
        System.out.println("__________________________________________________________");

        while (operation < 0 || operation > 4)

        {
            System.out.println("INVALID OPERATION! Choose a number from \"Date operation\". ");

            operation = askOperation(operation);

        }
        return operation;
    }

    public static void main(String[] args) throws IOException {

        Date date = null;
        int operation = 1;
        int days;
        operation = askOperation(operation);
        do {
            switch (operation) {
                case 1:
                    System.out.println("You chose 1 - create new date ");

                    date = new Date();
                    break;
                case 2:
                    System.out.println("You chose 2 - Show current date: ");
                    if (date == null) {
                        System.out.println("First you need to create a date!");

                        break;
                    }
                    System.out.println(date);

                    break;
                case 3:
                    System.out.println("You chose 3 - Increment date: ");

                    System.out.print("number of days: ");
                    days = input.nextInt();
                    date.increment(days);

                    break;
                case 4:
                    System.out.println("You chose 4 - Decrement date: ");
                    System.out.print("number of days: ");
                    days = input.nextInt();
                    date.decrement(days);

                    break;
                case 0:
                    System.out.println("You chose 0 - Exit");
                    break;

            }
            operation = askOperation(operation);
        } while (operation != 0);
        System.out.println(date);

    }
}