package Aula06Novo;

import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
import java.util.Scanner;
public class Ex1DateYMD {

    private int day, month, year;
    static Scanner input = new Scanner(System.in);
    public Ex1DateYMD(int day, int month, int year) {
        if (valid(day, month, year)) {
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            System.err.println("Invalid date! Couldn't create new date.");
        }
    }

    public Ex1DateYMD() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        this.day = Integer.parseInt(dtf.format(now).split("/")[2]);
        this.month = Integer.parseInt(dtf.format(now).split("/")[1]);
        this.year = Integer.parseInt(dtf.format(now).split("/")[0]);
    }

    /**
     * decrements one single day from current date
     */
    public void decrement() {
        day--;
        if (day == 0) {
            month--;
            if (!validMonth(month)) {
                month = 12;
                year--;
            }
            day = monthDays(month, year);
        }
    }

    /**
     * increments one single day from current date
     */
    public void increment() {
        day++;
        if (!valid(day, month, year)) {
            month++;
            day = 1;
            if (!valid(day, month, year)) {
                year++;
                month = 1;
            }
        }
    }

    public void set(int day, int month, int year) {
        if (valid(day, month, year)) {
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            System.err.println("Invalid date! Couldn't set new date.");
        }
    }

    public static boolean valid(int day, int month, int year) {
        if (year < 1) {
            return false;
        }
        if (!validMonth(month)) {
            return false;
        }
        if (day < 1 || day > monthDays(month, year)) {
            return false;
        }
        return true;
    }

    public static boolean validMonth(int month) {
        return month > 0 && month < 13;
    }

    /**
     * 
     * @param month
     * @param year
     * @return number of days in month
     */
    public static int monthDays(int month, int year) {
        int[] days = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        if (leapYear(year)) {
            days[1] = 29;
        }
        return days[month - 1];
    }
    public static int yearDays(int year){
        if(leapYear(year)){
            return 366;
        }
        return 365;
    }

    public static boolean leapYear(int year) {
        return ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)));
    }
    public static Ex1DateYMD askData() {
        int day,month,year;
        do{
        System.out.println("Insert a valid date:");
        System.out.print("Day: \n");
        day = input.nextInt();

        System.out.print("Month: \n");
        month = input.nextInt();

        System.out.print("Year: \n");
        year = input.nextInt();

        }while(!Ex1DateYMD.valid(day, month, year));
        Ex1DateYMD data = new Ex1DateYMD(day,month,year); 
        return data;
    }
    @Override
    public String toString() {
        return String.format("%04d-%02d-%02d", year, month, day);
    }

    
    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}