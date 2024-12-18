import java.io.File;
import java.util.Scanner;
import java.util.HashMap;

public class FlightManager implements FlightManagerInterface {
    public static HashMap<String, Flight> flights = new HashMap<>();



    public void importData(String[] tokens) {
        try {
            File file = new File(tokens[1]);
            
            Scanner sc = new Scanner(file);
            String firstLine = sc.nextLine();
            String[] data = firstLine.split(" ");
            
            if (data.length != 2 && data.length != 3 || !data[0].startsWith(">")) {
                System.out.println("Ficheiro mal formatado.");
                sc.close();
                return;
            }

            data[0] = data[0].substring(1);
            String[] dataModified = new String[data.length + 1];
            dataModified[0] = "F";
            System.arraycopy(data, 0, dataModified, 1, data.length);

            String flightCode = dataModified[1];
            addFlight(dataModified);

            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                String[] lineData = line.split(" ");
                if (lineData.length != 2) {
                    System.out.println("Ficheiro mal formatado.");
                    sc.close();
                    return;
                }

                String[] reservationData = new String[4];
                reservationData[0] = "R";
                reservationData[1] = flightCode;
                System.arraycopy(lineData, 0, reservationData, 2, lineData.length);
                makeReservation(reservationData, false);
            }
            sc.close();
        } catch (Exception e) {
            System.out.println("Erro ao ler ficheiro.");
            System.out.println(e);
            return;
        }
    }

    public void printFlightMap(String[] tokens) {
        String flightCode = tokens[1];

        if (flights.containsKey(flightCode)) {
            printFlightSeatMap(flights.get(flightCode));
        } else {
            System.out.println("O voo não existe.");
        }
    }

    public void addFlight(String[] tokens) {
        String flightCode = tokens[1];
        String seatsExec, seatsTour;
        Plane plane;

        if (flights.containsKey(flightCode)) {
            System.out.println("O voo já existe.");
            return;
        }

        if (tokens.length == 3) {
            seatsTour = tokens[2];
            if (!seatsTour.matches("\\d+x\\d+")) {
                System.out.println("Formato de lugares inválido.");
                return;
            }
            plane = new Plane(seatsTour);

        } else {
            seatsExec = tokens[2];
            seatsTour = tokens[3];
            if (!seatsTour.matches("\\d+x\\d+") || !seatsExec.matches("\\d+x\\d+")) {
                System.out.println("Formato de lugares inválido.");
                return;
            }
            plane = new Plane(seatsExec, seatsTour);

        }

        if (!flightCode.matches("[a-zA-Z0-9]+")) {
            System.out.println("Código de voo inválido.");
            return;
        }
        Flight flight = new Flight(flightCode, plane);
        flights.put(flightCode, flight);
        System.out.println(flight.toString());
    }

    public void makeReservation(String[] tokens, boolean print) {
        String[] reservedSeats;
        String flightCode = tokens[1];
        String ticketClass = tokens[2].toUpperCase();
        int numSeats = Integer.parseInt(tokens[3]);

        if (!FlightManager.flights.containsKey(flightCode)) {
            System.out.println("O voo não existe.");
            return;
        }

        if (ticketClass.equals("E")) {
            if (!flights.get(flightCode).getPlane().hasExecutive()) {
                System.out.println("Classe executiva não disponível neste voo.");
                System.out.println("Não foi possível obter lugares para a reserva: " + ticketClass + " " + numSeats);
                return;
            }
            reservedSeats = bookSeats(flights.get(flightCode), TicketClass.EXECUTIVE, numSeats);
        } else if (ticketClass.equals("T")) {
            reservedSeats = bookSeats(flights.get(flightCode), TicketClass.TOURIST, numSeats);
        } else {
            System.out.println("Classe inválida. Use E para executiva ou T para turística.");
            return;
        }

        int numReservation = flights.get(flightCode).getReservationNumber();
        if (reservedSeats != null) {
            if (print) {
                System.out.println(flightCode + ":" + numReservation + " = " + String.join(" | ", reservedSeats));
            }
        } else {
            System.out.println("Não foi possível obter lugares para a reserva: " + ticketClass + " " + numSeats);
        }
    }

    public void cancelReservation(String[] tokens) {
        String[] reservationCode = tokens[1].split(":");
        String flightCode = reservationCode[0];
        int numReservation = Integer.parseInt(reservationCode[1]);

        if (numReservation < 1) {
            System.out.println("Número de reserva inválido.");
            return;
        }

        if (flights.containsKey(flightCode)) {
            if (cancelBook(flights.get(flightCode), numReservation)) {
                System.out.println("A reserva " + flightCode + ":" + numReservation + " foi cancelada.");
            } else {
                System.out.println("A reserva não existe.");
            }
        } else {
            System.out.println("O voo não existe.");
        }
    }



    private String[] bookSeats(Flight flight, TicketClass ticketClass, int numSeatsToBook) {
        int[][] bookedSeats;
        String[] atributedSeats = new String[numSeatsToBook];
        int capacity, occupied;
        Plane plane = flight.getPlane();
        int rowGap = 1;

        switch (ticketClass) {
            case EXECUTIVE:
                capacity = plane.getExecutiveCapacity();
                occupied = plane.getOccupiedExecutiveSeats();
                if (capacity - occupied < numSeatsToBook) {
                    return null;
                }
                bookedSeats = plane.getExecutiveSeats();
                break;
            case TOURIST:
                capacity = plane.getTouristCapacity();
                occupied = plane.getOccupiedTouristSeats();
                if (capacity - occupied < numSeatsToBook) {
                    return null;
                }
                bookedSeats = plane.getTouristSeats();
                if (plane.hasExecutive()) {
                    rowGap = 1 + plane.getExecutiveSeats().length;
                }
                break;
            default:
                return null;
        }
        
        int numRows = bookedSeats.length;
        int numCols = bookedSeats[0].length;
        int firstEmptyRow = -1;
        
        for (int row = 0; row < numRows; row++) {
            boolean empty = true;
            for (int col = 0; col < numCols; col++) {
                if (bookedSeats[row][col] != 0) {
                    empty = false;
                    break;
                }
            }

            if (empty) {
                firstEmptyRow = row;
                break;
            }
        }

        int numBookedSeats = 0;
        boolean allBooked = false;

        if (firstEmptyRow == -1) {
            for (int row = 0; row < numRows && !allBooked; row++) {
                for (int col = 0; col < numCols && !allBooked; col++) {
                    if (bookedSeats[row][col] == 0) {
                        bookedSeats[row][col] = flight.getReservationNumber() + 1;
                        
                        atributedSeats[numBookedSeats] = Integer.toString(row + rowGap) + (char) ('A' + col);
                        numBookedSeats++;
                    }

                    if (numBookedSeats == numSeatsToBook) {
                        allBooked = true;
                        break;
                    }
                }
                if (allBooked) {
                    break;
                }
            }
        } else {
            for (int row = firstEmptyRow; row < numRows && !allBooked; row++) {
                for (int col = 0; col < numCols && !allBooked; col++) {
                    if (bookedSeats[row][col] == 0) {
                        bookedSeats[row][col] = flight.getReservationNumber() + 1;
                        
                        atributedSeats[numBookedSeats] = Integer.toString(row + rowGap) + (char) ('A' + col);
                        numBookedSeats++;
                    }

                    if (numBookedSeats == numSeatsToBook) {
                        allBooked = true;
                        break;
                    }
                }
                if (allBooked) {
                    break;
                }
            }
            if (numBookedSeats < numSeatsToBook) {
                for (int row = 0; row < firstEmptyRow && !allBooked; row++) {
                    for (int col = 0; col < numCols && !allBooked; col++) {
                        if (bookedSeats[row][col] == 0) {
                            bookedSeats[row][col] = flight.getReservationNumber() + 1;
                            
                            atributedSeats[numBookedSeats] = Integer.toString(row + rowGap) + (char) ('A' + col);
                            numBookedSeats++;
                        }
                        
                        if (numBookedSeats == numSeatsToBook) {
                            allBooked = true;
                            break;
                        }
                    }
                    if (allBooked) {
                        break;
                    }
                }
            }
        }

        if (allBooked) {
            flight.incrementReservationNumber(1);
            switch (ticketClass) {
                case EXECUTIVE:
                    plane.setExecutiveSeats(bookedSeats);
                    break;
                case TOURIST:
                    plane.setTouristSeats(bookedSeats);
                    break;
                default:
                    break;
            }
            return atributedSeats;
        }
        return null;
    }

    private void printFlightSeatMap(Flight flight) {
        Plane plane = flight.getPlane();
        int[][] executiveSeats = new int[0][0];
        int numRowsExec = 0;
        int numColsExec = 0;

        if (plane.hasExecutive()) {
            executiveSeats = plane.getExecutiveSeats();
            numRowsExec = executiveSeats.length;
            numColsExec = executiveSeats[0].length;
        }
        
        int[][] touristSeats = plane.getTouristSeats();
        int numRowsTour = touristSeats.length;
        int numColsTour = touristSeats[0].length;

        int numRows = numRowsExec + numRowsTour;
        int numMaxCols = Math.max(numColsExec, numColsTour);

        System.out.print(" ");
        for (int row = 0; row < numRows; row++) {
            System.out.printf("%3s", row + 1);
        }
        System.out.println();

        for (int col = 0; col < numMaxCols; col++) {
            System.out.printf("%c", (char) ('A' + col));
            for (int row = 0; row < numRows; row++) {
                if (row < numRowsExec) {
                    if (col < numColsExec) {
                        System.out.printf("%3d", executiveSeats[row][col]);
                    } else {
                        System.out.print("   ");
                    }
                } else {
                    if (col < numColsTour) {
                        System.out.printf("%3d", touristSeats[row - numRowsExec][col]);
                    } else {
                        System.out.print("   ");
                    }
                }
            }
            System.out.println();
        }
        System.out.println();
    }

    private boolean cancelBook(Flight flight, int numBook) {
        if (numBook > flight.getReservationNumber()) {
            return false;
        }

        Plane plane = flight.getPlane();
        int[][] executiveSeats = new int[0][0];
        int numRowsExec = 0;
        int numColsExec = 0;

        if (plane.hasExecutive()) {
            executiveSeats = plane.getExecutiveSeats();
            numRowsExec = executiveSeats.length;
            numColsExec = executiveSeats[0].length;
        }

        int[][] touristSeats = plane.getTouristSeats();
        int numRowsTour = touristSeats.length;
        int numColsTour = touristSeats[0].length;

        int numRows = numRowsExec + numRowsTour;
        int numMaxCols = Math.max(numColsExec, numColsTour);

        for (int row = 0; row < numRows; row++) {
            for (int col = 0; col < numMaxCols; col++) {
                if (row < numRowsExec) {
                    if (col < numColsExec) {
                        if (executiveSeats[row][col] == numBook) {
                            executiveSeats[row][col] = 0;
                            plane.setExecutiveSeats(executiveSeats);
                        }
                    }
                } else {
                    if (col < numColsTour) {
                        if (touristSeats[row - numRowsExec][col] == numBook) {
                            touristSeats[row - numRowsExec][col] = 0;
                            plane.setTouristSeats(touristSeats);
                        }
                    }
                }
            }
        }

        flight.decrementReservationNumber(1);

        return true;
    }
}
