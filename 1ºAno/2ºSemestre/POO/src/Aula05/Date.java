//package Aula05;

import java.util.Scanner;

public class Date {
    public static final Scanner input = new Scanner(System.in);
    private int day;
    private int month;
    private int year;

    Date() {
        year = input.nextInt();
        System.out.println("inicio");
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
        System.out.println(toString(day, month, year));

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

    public static int monthDays(int month, int year) {
        Boolean leap = leapYear(year);
        int numDias = 0;
        switch (month) {
            case 1, 3, 5, 7, 8, 10, 12:
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

    public String toString(int year, int month, int day) {
        return String.format("%04d-%02d-%02d", year, month, day);
    }
}
