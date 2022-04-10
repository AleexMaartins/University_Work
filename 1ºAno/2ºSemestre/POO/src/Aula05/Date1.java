package Aula05;

import java.util.Scanner;

public class Date1 {
    public static final Scanner input = new Scanner(System.in);
    private int day;
    private int month;
    private int year;

    Date() {
        System.out.println("Year:"); // CB deve alterar incluir print para month e day!
        year = input.nextInt();

        do {
            month = input.nextInt();

            if (!validMonth(month))
                System.out.println("Error! Insert a valid month: ");// erro
        } while (!validMonth(month));

        do {
            day = input.nextInt();
            if (!valid(day, month, year))
                System.out.println("Error! Insert a valid day: ");
        } while (!valid(day, month, year));
        System.out.println(this); // CB

    }

    Date(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;

    }

    public void set(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public void increment(int days) {
        while (days > 0) {
            if (this.day == monthDays(this.month, this.year)) {
                this.day = 1;
                if (this.month == 12) {
                    this.month = 1;
                    this.year++;
                } else {
                    this.month++;
                }
            } else {
                this.day++;
            }
            days--;
        }
    }

    public void decrement(int days) {
        while (days > 0) {
            if (this.day == 1) {
                if (this.month == 1) {
                    this.month = 12;
                    this.year--;
                } else {
                    this.month--;
                }
                this.day = monthDays(this.month, this.year);
            } else {
                this.day--;
            }
            days--;
        }
    }

    public static boolean validMonth(int month) {
        if (month < 1 || month > 12) {
            System.out.println("INVALID MONTH");
            return false;
        }
        return true;
    }
    /*
     * //CB: a versão do java que tenho instalada aina não suporta mais do que uma
     * opção no switch case...
     * public static int monthDays(int month, int year) {
     * Boolean leap = leapYear(year);
     * int numDias = 0;
     * switch (month) {
     * case 1, 3, 5, 7, 8, 10, 12:
     * numDias = 31;
     * return numDias;
     * 
     * case 2:
     * if (leap)
     * numDias = 29;
     * numDias = 28;
     * 
     * return numDias;
     * default:
     * numDias = 30;
     * return numDias;
     * 
     * }
     * 
     * }
     */

    public static int monthDays(int month, int year) {
        Boolean leap = leapYear(year);
        int numDias = 0;
        switch (month) {
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                numDias = 31;
                return numDias;

            case 2:
                if (leap)
                    numDias = 29;
                numDias = 28;

                return numDias;
            default:
                numDias = 30;
                return numDias;

        }

    }

    public static Boolean leapYear(int year) {

        if ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)))
            return true;

        return false;
    }

    public static Boolean valid(int day, int month, int year) {
        // verificar mes
        if (validMonth(month) == false)
            return false;
        // verificar dia
        if (day < 0 || day > monthDays(month, year))
            return false;

        return true;
    }

    @Override
    public String toString() { // CB: este método deve ser um método aplicado ao objeto e não um método
                               // estático
        return String.format("%04d-%02d-%02d", year, month, day);
    }
}
