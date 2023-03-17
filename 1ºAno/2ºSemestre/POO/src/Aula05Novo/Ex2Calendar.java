package Aula05Novo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

public class Ex2Calendar {
    private int year;
    private String firstWeekDayOfYear;
    private Map<Ex1DateYMD, List<String>> events;

    public Ex2Calendar(int year, String firstWeekDayOfYear) {
        if (year < 0) {
            throw new IllegalArgumentException("Year must be positive");
        } else {
            if (!validfirstWeekDayOfYear(firstWeekDayOfYear)) {
                throw new IllegalArgumentException(
                        "Invalid first week day of year. Must be one of the following: Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday");
            } else {
                this.year = year;
                this.firstWeekDayOfYear = firstWeekDayOfYear;
                events = new HashMap<>();

            }
        }
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

    public boolean validfirstWeekDayOfYear(String firstWeekDayOfYear) {
        if (firstWeekDayOfYear.equals("sunday")
                || firstWeekDayOfYear.equals("monday")
                || firstWeekDayOfYear.equals("tuesday")
                || firstWeekDayOfYear.equals("wednesday")
                || firstWeekDayOfYear.equals("thursday")
                || firstWeekDayOfYear.equals("friday")
                || firstWeekDayOfYear.equals("saturday")) {
            return true;
        }
        return false;
    }

    public String firstWeekdayOfMonth(int month) {
        int daysFromFirstWeekDay = 0;
        int firstWeekDay = 0;

        for (int i = 0; i < (month - 1); i++) {
            daysFromFirstWeekDay += Ex1DateYMD.monthDays(i + 1, year); // soma de todos os dias até ao 1º do mês pedido
        }
        switch (firstWeekDayOfYear) {
            case "sunday":
                firstWeekDay = 0;
                break;
            case "monday":
                firstWeekDay = 1;
                break;
            case "tuesday":
                firstWeekDay = 2;
                break;
            case "wednesday":
                firstWeekDay = 3;
                break;
            case "thursday":
                firstWeekDay = 4;
                break;
            case "friday":
                firstWeekDay = 5;
                break;
            case "saturday":
                firstWeekDay = 6;
                break;
            default:
                System.out.println("Invalid first week day of year.");
                break;
        }
        int firstWeekDayOfMonth = (firstWeekDay + daysFromFirstWeekDay) % 7;
        String firstWeekDayOfMonthString = "";
        switch (firstWeekDayOfMonth) {
            case 0:
                firstWeekDayOfMonthString = "sunday";
                break;
            case 1:
                firstWeekDayOfMonthString = "monday";
                break;

            case 2:
                firstWeekDayOfMonthString = "tuesday";
                break;
            case 3:
                firstWeekDayOfMonthString = "wednesday";
                break;
            case 4:
                firstWeekDayOfMonthString = "thursday";
                break;
            case 5:
                firstWeekDayOfMonthString = "friday";
                break;
            case 6:
                firstWeekDayOfMonthString = "saturday";
                break;
            default:
                System.out.println("Invalid first week day of month.");
                break;
        }
        return firstWeekDayOfMonthString;
    }

    public void addEvent(Ex1DateYMD date, String event) {
        if (!events.containsKey(date)) {
            events.put(date, new ArrayList<String>());
        }
        events.get(date).add(event);
    }

    public void removeEvent(Ex1DateYMD date, String event) {
        if (events.containsKey(date)) {
            events.get(date).remove(event);
        }
        else{
            System.out.println("No events on this date.");
        }
    }

    public void printMonth(int month) {
        System.out.println("Su\tMo\tTu\tWe\tTh\tFr\tSa");
        String firstWeekdayOfMonth = firstWeekdayOfMonth(month);
        int daysInMonth = Ex1DateYMD.monthDays(month, year);
        switch (firstWeekdayOfMonth) {
            case "sunday":
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 1 || i == 8 || i == 15 || i == 22 || i == 29) {
                        System.out.print("\n");
                    }
                    boolean hasEvent = false;
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month && date.getDay() == i) {
                            hasEvent = true;
                            break;
                        }
                    }
                    if (hasEvent) {
                        System.out.print(i + "*\t");
                    } else {
                        System.out.print(i + "\t");
                    }
                }
                break;
            case "monday":
                System.out.print("\t");
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 1 || i == 7 || i == 14 || i == 21 || i == 28) {
                        System.out.print("\n");
                    }
                    boolean hasEvent = false;
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month && date.getDay() == i) {
                            hasEvent = true;
                            break;
                        }
                    }
                    if (hasEvent) {
                        System.out.print(i + "*\t");
                    } else {
                        System.out.print(i + "\t");
                    }
                }
                break;
            case "tuesday":
                System.out.print("\t\t");
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 1 || i == 6 || i == 13 || i == 20 || i == 27) {
                        System.out.print("\n");
                    }
                    boolean hasEvent = false;
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month && date.getDay() == i) {
                            hasEvent = true;
                            break;
                        }
                    }
                    if (hasEvent) {
                        System.out.print(i + "*\t");
                    } else {
                        System.out.print(i + "\t");
                    }
                }
                break;
            case "wednesday":
                System.out.print("\t\t\t");
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 1 || i == 5 || i == 12 || i == 19 || i == 26) {
                        System.out.print("\n");
                    }
                    boolean hasEvent = false;
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month && date.getDay() == i) {
                            hasEvent = true;
                            break;
                        }
                    }
                    if (hasEvent) {
                        System.out.print(i + "*\t");
                    } else {
                        System.out.print(i + "\t");
                    }
                }
                break;
            case "thursday":
                System.out.print("\t\t\t\t");
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 1 || i == 4 || i == 11 || i == 18 || i == 25) {
                        System.out.print("\n");
                    }
                    boolean hasEvent = false;
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month && date.getDay() == i) {
                            hasEvent = true;
                            break;
                        }
                    }
                    if (hasEvent) {
                        System.out.print(i + "*\t");
                    } else {
                        System.out.print(i + "\t");
                    }
                }
                break;
            case "friday":
                System.out.print("\t\t\t\t\t");
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 1 || i == 3 || i == 10 || i == 17 || i == 24 || i == 31)
                        System.out.print("\n" + i + "\t");
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month) {
                            int day = date.getDay();
                            System.out.print(day + "*\t");
                        }

                        else {
                            System.out.print(i + "\t");
                        }
                    }
                }
                break;
            case "saturday":
                System.out.print("\n" + "\t" + "\t" + "\t" + "\t" + "\t" + "\t");
                for (int i = 1; i <= daysInMonth; i++) {
                    if (i == 2 || i == 9 || i == 16 || i == 23 || i == 30)
                        System.out.print("\n" + i + "\t");
                    for (Ex1DateYMD date : events.keySet()) {
                        if (date.getYear() == year && date.getMonth() == month) {
                            int day = date.getDay();
                            System.out.print(day + "*\t");
                        }

                        else {
                            System.out.print(i + "\t");
                        }
                    }
                }
                break;
            default:
                System.out.println("Invalid first week day of month.");
                break;
        }
        // System.out.println();
        // for (Ex1DateYMD date : events.keySet()) {
        //     if (date.getYear() == year && date.getMonth() == month) {
        //         int day = date.getDay();
        //         System.out.print(day + "*\t");
        //     }
        // }
        // System.out.println();
    }

    public void printCalendar() {
        for (int i = 1; i <= 12; i++) {
            System.out.println("Month " + i + " of " + year);
            printMonth(i);
            System.out.println("\n");
        }
    }
}
