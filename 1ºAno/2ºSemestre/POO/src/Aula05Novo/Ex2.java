package Aula05Novo;

import java.util.Scanner;
public class Ex2 {
    private int year;
    private String firstWeekDayOfYear;
    String eventos[][] = new String[Ex1DateYMD.yearDays(year)][2];

    public Ex2(int year, String firstWeekDayOfYear) {
        this.year = year;
        this.firstWeekDayOfYear = firstWeekDayOfYear;
    }

    public static void main(String[] args) {

    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getFirstWeekDayOfYear() {
        return firstWeekDayOfYear;
    }

    public void setFirstWeekDayOfYear(String firstWeekDayOfYear) {
        this.firstWeekDayOfYear = firstWeekDayOfYear;
    }

    public String firstWeekOfMonth(int month) { 
        int daysFromFirstWeekDay = 0;
        int firstWeekDay = 0;

        for(int i=0; i<(month-1); i++){
            daysFromFirstWeekDay += Ex1DateYMD.monthDays(i, year);  //soma de todos os dias até ao 1º do mês pedido
        }
        daysFromFirstWeekDay += 1;  //soma de 1 dia para o 1º do mês pedido
        System.out.println(daysFromFirstWeekDay);
        switch (firstWeekDayOfYear) {
            case "Sunday":
                firstWeekDay = 0;
            case "Monday":
                firstWeekDay = 1;
            case "Tuesday":
                firstWeekDay = 2;
            case "Wednesday":
                firstWeekDay = 3;
            case "Thursday":
                firstWeekDay = 4;
            case "Friday":
                firstWeekDay = 5;
            case "Saturday":
                firstWeekDay = 6;
            default:
                System.out.println("Invalid first week day of year.");
        }
        int firstWeekDayOfMonth = (firstWeekDay + daysFromFirstWeekDay) % 7;
        String firstWeekDayOfMonthString = "";
        switch (firstWeekDayOfMonth) {
            case 0:
                firstWeekDayOfMonthString = "Sunday";
            case 1:
                firstWeekDayOfMonthString = "Monday";
            case 2:
                firstWeekDayOfMonthString = "Tuesday";
            case 3:
                firstWeekDayOfMonthString = "Wednesday";
            case 4:
                firstWeekDayOfMonthString = "Thursday";
            case 5:
                firstWeekDayOfMonthString = "Friday";
            case 6:
                firstWeekDayOfMonthString = "Saturday";
        }
        return firstWeekDayOfMonthString;
    }

    public void addEvent(Ex1DateYMD date){      
    
    }
    public static void printMenu() {
        System.out.println("\n\nDate operations:");
        System.out.println("1 - create new calendar");
        System.out.println("2 - print calendar month");
        System.out.println("3 - print calendar");
        System.out.println("0 - exit");
    }
}
