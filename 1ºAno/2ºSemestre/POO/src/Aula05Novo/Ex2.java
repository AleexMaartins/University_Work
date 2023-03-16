package Aula05Novo;

import java.util.Scanner;

public class Ex2 {
    static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        int day, month, year;
        String addEvent, removeEvent;
        printMenu();
        int op = input.nextInt();
        Ex2Calendar calendar = new Ex2Calendar(2023, "sunday");

        do {
            switch (op) {
                case 1:
                    System.out.println("Year: ");
                    year = askForAYear();
                    String firstWeekDay = askForAWeekDay();
                    calendar = new Ex2Calendar(year, firstWeekDay);
                    break;
                case 2:
                    System.out.println("Month: ");
                    month = askForAMonth();
                    calendar.printMonth(month);
                    break;
                case 3:
                    calendar.printCalendar();
                    break;
                case 4:
                    year = askForAYear();
                    month = askForAMonth();
                    day = askForAday(month, year);
                    addEvent = askForEvent();
                    Ex1DateYMD addDate = new Ex1DateYMD(day, month, year);
                    calendar.addEvent(addDate, addEvent);

                    break;
                // case 5:
                // year = askForAYear();
                // month = askForAMonth();
                // day = askForAday(month, year);
                // Ex1DateYMD removeDate = new Ex1DateYMD(day, month, year);
                // System.out.print("Event: ");
                // removEvent = input.nextLine();

                // calendar.addEvent(removeDate, removEvent);
                // break;
                default:
                    System.out.println("Invalid option.");
                    break;
            }

            printMenu();
            op = input.nextInt();
        } while (op != 0);
    }

    public static void printMenu() {
        System.out.println("\n\nDate operations:");
        System.out.println("1 - create new calendar");
        System.out.println("2 - print calendar month");
        System.out.println("3 - print calendar");
        System.out.println("4 - add event");
        System.out.println("5 - remove event");
        System.out.println("0 - exit");
    }

    private static int askForAYear() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Input a year: ");
                nr = input.nextInt();
                if (nr <= 0) {
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Value not positive!!");
                    System.out.println("____________________________");
                    System.out.println("");
                    continue;
                }
                check = false;

            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Value not an integer!!");
                System.out.println("____________________________");
                System.out.println("");
                input.nextLine();
            }
        }
        return nr;
    }

    private static String askForAWeekDay() {
        String weekDay = "";
        String[] weekDays = { "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday" };
        boolean check = true;
        while (check) {
            try {
                System.out.print("Input a week day: ");
                weekDay = input.next().toLowerCase();
                for (String s : weekDays) {
                    if (s.equals(weekDay)) {
                        check = false;
                    }
                }
                if (check) {
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Value not a week day!!");
                    System.out.println("____________________________");
                    System.out.println("");
                    continue;
                }
                check = false;

            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Value not a week day!!");
                System.out.println("____________________________");
                System.out.println("");
                input.nextLine();
            }
        }
        return weekDay;
    }

    private static int askForAMonth() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Input a month: ");
                nr = input.nextInt();
                if (nr <= 0 || nr > 12) {
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Value not a month!!");
                    System.out.println("____________________________");
                    System.out.println("");
                    continue;
                }
                check = false;

            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Value not an integer!!");
                System.out.println("____________________________");
                System.out.println("");
                input.nextLine();
            }
        }
        return nr;
    }

    public static int askForAday(int month, int year) {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Input a day: ");
                nr = input.nextInt();
                if (nr <= 0 || nr > Ex1DateYMD.monthDays(month, year)) {
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Value not a valid day of this month!!");
                    System.out.println("____________________________");
                    System.out.println("");
                    continue;
                }
                check = false;

            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Value not an integer!!");
                System.out.println("____________________________");
                System.out.println("");
                input.nextLine();
            }
        }
        return nr;
    }

    public static String askForEvent() {
        System.out.print("Input an event: ");
        String event = input.next();

        return event;
    }
}
