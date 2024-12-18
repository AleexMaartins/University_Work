package lab03.ex2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Manager flightManager = new FlightManager();
        Scanner input = new Scanner(System.in);
        String op;
        do {
            System.out.println("Escolha uma opção: (H para ajuda)");
            op = input.nextLine();
            actUponInput(op, flightManager);
        } while (!op.equalsIgnoreCase("Q"));
        input.close();
    }

    public static void actUponInput(String op, Manager flightManager) {
        String[] commands = op.split(" ");
        switch (commands[0].toLowerCase()) {
            case "h":
                System.out.print(menu());
                break;
            case "i":
                flightManager.loadFlightFile(commands[1]);
                break;
            case "m":
                System.out.println(flightManager.flightReservationsMap(commands[1]));
                break;
            case "f":
                flightManager.addFlight(op.substring(2));
                break;
            case "r":
                System.out.println(flightManager.addReservation(op.substring(2)));
                break;
            case "c":
                flightManager.cancelReservation(op.substring(2));
                break;
            default:
                break;
        }
    }

    @SuppressWarnings("SameReturnValue")
    public static String menu() {
        return "I filename: Lê um ficheiro de texto contendo informação sobre um voo. A primeira linha do ficheiro deve começar com o caracter '>' e indicar o código de voo, o número de filas e lugares por fila em classe executiva (caso exista) e o número de filas e lugares por fila em classe turística. As linhas seguintes, caso existam, contêm reservas já efetuadas, no formato classe e número de lugares.\n\n" +
                "M flight_code: exibe o mapa das reservas de um voo. Os lugares reservados são identificados pelo número sequencial da reserva; os lugares livres são identificados pelo número 0.\n\n" +
                "F flight_code num_seats_executive num_seats_tourist: acrescenta um novo voo, com código, lugares em executiva (p.ex. 4x3, representando 4 filas com 3 lugares por fila), e lugares em turística. Os lugares em classe executiva são opcionais, podendo existir apenas lugares em turística.\n\n" +
                "R flight_code class number_seats: acrescenta uma nova reserva a um voo, com indicação do código do voo, da classe (T / E), e do número de lugares.\n\n" +
                "C reservation_code: cancela uma reserva. O código de reserva tem o formato flight_code:sequential_reservation_number.\n\n" +
                "Q: termina o programa.\n\n";
    }
}
