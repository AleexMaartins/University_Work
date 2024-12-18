import java.io.File;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        FlightManager fm = new FlightManager();
        
        if (args.length > 0) {
            try {
                File file = new File(args[0]);
                Scanner sc = new Scanner(file);

                while (sc.hasNextLine()) {
                    String line = sc.nextLine();
                    System.out.println(line);
                    processComand(line, fm);
                    System.out.println();
                }

                sc.close();
            } catch (Exception e) {
                System.out.println("Erro ao ler o arquivo.");
                System.out.println(e);
            }

        } else {
            Scanner sc = new Scanner(System.in);

            System.out.println("Escolha uma opçãp: (H para ajuda)");
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                processComand(line, fm);
                System.out.println("\nEscolha uma opção: (H para ajuda)");
            }
            
            sc.close();
        }
    }

    public static void processComand(String line, FlightManager fm) {
        String[] tokens = line.split(" ");
        String command = tokens[0];
        switch (command.toUpperCase()) {
            case "H":
                printOptions();
                break;
            case "I":
                if (!validInput(tokens, 2)) {
                    System.out.println("Usage: I <filename>");
                    break;
                }
                fm.importData(tokens);
                break;
            case "M":
                if (!validInput(tokens, 2)) {
                    System.out.println("Usage: M <flight_code>");
                    break;
                }
                fm.printFlightMap(tokens);
                break;
            case "F":
                if (!validInput(tokens, 4) && !validInput(tokens, 3)) {
                    System.out.println("Usage: F <flight_code> [num_seats_executive] <num_seats_tourist>");
                    break;
                }
                fm.addFlight(tokens);
                break;
            case "R":
                if (!validInput(tokens, 4)) {
                    System.out.println("Usage: R <flight_code> <class> <num_seats>");
                    break;
                }
                fm.makeReservation(tokens, true);
                break;
            case "C":
                if (!validInput(tokens, 2)) {
                    System.out.println("Usage: C <reservation_code>");
                    break;
                }
                fm.cancelReservation(tokens);
                break;
            case "Q":
                System.exit(0);
            default:
                System.out.println("Opção inválida.");
                break;
        }
    }

    public static void printOptions() {
        System.out.println("H: Print this help message");
        System.out.println("I <filename>: Import data from file");
        System.out.println("M <flight_code>: Print the flight booking map");
        System.out.println("F <flight_code> [num_seats_executive] <num_seats_tourist>: Add a new flight");
        System.out.println("R <flight_code> <class> <num_seats>: Book seats");
        System.out.println("C <reservation_code>: Cancel a reservation");
        System.out.println("Q: Quit");
    }

    public static boolean validInput(String[] tokens, int numTokens) {
        return tokens.length == numTokens;
    }
}
