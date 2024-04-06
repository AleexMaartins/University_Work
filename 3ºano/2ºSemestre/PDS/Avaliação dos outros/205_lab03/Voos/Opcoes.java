package lab03.Voos;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Scanner;

public class Opcoes {
    public static void H(){
        System.out.println(printMenu());
    }

    public static void I(String comandos[], HashMap<String, Voo> voos){
        if (comandos.length != 2){
            System.out.println("Invalid Format! Try: I <file>");
            return;
        }

        try {
            File file = new File(comandos[1]);
            Scanner fileScanner = new Scanner(file);
            String line;
            String[] data;
            String flightCode = " ";
            int numFilaExecutiva = 0, numAssentosPorFilaExecutiva = 0, numFilaTuristica = 0, numAssentosPorFilaTuristica = 0;
            Voo voo;

            // Ler a primeira linha e processá-la
            line = fileScanner.nextLine();
            data = line.split(" ");

            if (line.charAt(0) == '>') {
                flightCode = data[0].replace(">", "");

                // Existência da classe Turistica
                if (data.length == 2) {
                    numFilaTuristica = Integer.parseInt(data[1].split("x")[0]);
                    numAssentosPorFilaTuristica = Integer.parseInt(data[1].split("x")[1]);
                    voos.put(flightCode, new Voo(flightCode, new Aviao(flightCode, numFilaTuristica, numAssentosPorFilaTuristica, 0, 0)));
                }

                // Existência da classe Executiva
                if (data.length == 3) {
                    numFilaExecutiva = Integer.parseInt(data[1].split("x")[0]);
                    numAssentosPorFilaExecutiva = Integer.parseInt(data[1].split("x")[1]);
                    numFilaTuristica = Integer.parseInt(data[2].split("x")[0]);
                    numAssentosPorFilaTuristica = Integer.parseInt(data[2].split("x")[1]);
                    voos.put(flightCode, new Voo(flightCode, new Aviao(flightCode, numFilaTuristica, numAssentosPorFilaTuristica, numFilaExecutiva, numAssentosPorFilaExecutiva)));
                }
            }


            System.out.printf("Código de voo %s. ", flightCode);
            System.out.printf("Lugares disponíveis: ");
            if (numFilaExecutiva != 0){
                System.out.printf("%d lugares para a classe Executiva; ", numFilaExecutiva * numAssentosPorFilaExecutiva);
            }
            System.out.printf("%d lugares para a classe Turística.\n", numFilaTuristica * numAssentosPorFilaTuristica);

            // Registrar as reservas do arquivo
            voo = voos.get(flightCode);

            while (fileScanner.hasNext()) {
                line = fileScanner.nextLine();
                data = line.split(" ");

                // Classe executiva
                if (data[0].equals("E")) {
                    if (!reservar(Integer.parseInt(data[1]), voo.getAviao().getFilaClasseExecutiva(), voo, false)){
                        System.out.printf("Não foi possível obter lugares para a reserva: E %s\n", data[1]);
                    }
                    else
                        voos.get(flightCode).adicionarReservaLugar();
                }

                // Classe turística
                if (data[0].equals("T")) {
                    if (!reservar(Integer.parseInt(data[1]), voo.getAviao().getFilaClasseTuristica(), voo, false)){
                        System.out.printf("Não foi possível obter lugares para a reserva: T %s\n", data[1]);
                }
                    else
                        voos.get(flightCode).adicionarReservaLugar();
                }
            }
            fileScanner.close();

        } catch (FileNotFoundException e) {
            System.out.println("ERROR: File not found!");
            return;
        }
    }

    public static void M(String comandos[], HashMap<String, Voo> voos){
        if (comandos.length != 2) {
            System.out.println("Invalid arguments! Try: M <flightCode>");
            return;
        }
    
        if (!voos.containsKey(comandos[1])) {
            System.out.println("Invalid flight!");
            return;
        }
        
        Voo voo = voos.get(comandos[1]);

        int numFilaExecutiva = voo.getAviao().getFilaClasseExecutiva().length;
        int numFilas =  numFilaExecutiva + voo.getAviao().getFilaClasseTuristica().length;
        int numAssentosPorFilaExecutiva = 0;

        if(voo.getAviao().getFilaClasseExecutiva().length > 0){
            numAssentosPorFilaExecutiva = voo.getAviao().getFilaClasseExecutiva()[0].length;
        }

        int totalLugaresExecutiva = numAssentosPorFilaExecutiva;
        if(voo.getAviao().getFilaClasseTuristica()[0].length > totalLugaresExecutiva){
            totalLugaresExecutiva = voo.getAviao().getFilaClasseTuristica()[0].length;
        }
        
        System.out.print("    ");
        for (int numeroFila = 0; numeroFila < numFilas; numeroFila++){
            System.out.printf("%3d ", numeroFila+1);
        }
        
        System.out.println();
        
        for (int numLugar = 0; numLugar < totalLugaresExecutiva; numLugar++) {
            System.out.printf("%3s ", ((char)(numLugar + 'A')));

            for (int numeroFila = 0; numeroFila < numFilas; numeroFila++) {
                if (numeroFila < numFilaExecutiva){
                    if(numLugar >= numAssentosPorFilaExecutiva){
                        System.out.print("    ");
                        continue;
                    }
                    System.out.printf("%3d ", voo.getAviao().getFilaClasseExecutiva()[numeroFila][numLugar].getIdAssentoReservado());
                }
                else{
                    System.out.printf("%3d ", voo.getAviao().getFilaClasseTuristica()[numeroFila - numFilaExecutiva][numLugar].getIdAssentoReservado());
                }
            }
            System.out.println();
        }
    }

    public static void F(String[] comandos, HashMap<String, Voo> voos){
        if (comandos.length < 3 || comandos.length > 4) {
            System.out.println("Invalid arguments! Try: F <flightCode> [numFilaExecutiva x numAssentosPorFilaExecutiva] <numFilaTuristica>x<numAssentosPorFilaTuristica>");
            return;
        }

        String flightCode = comandos[1];
        if (comandos.length == 3) {
            int numFilaTuristica = Integer.parseInt(comandos[2].split("x")[0]);
            int numAssentosPorFilaTuristica = Integer.parseInt(comandos[2].split("x")[1]);
            voos.put(flightCode, new Voo(flightCode, new Aviao(flightCode, numFilaTuristica, numAssentosPorFilaTuristica, 0, 0)));
        }

        if (comandos.length == 4) {
            int numFilaExecutiva = Integer.parseInt(comandos[2].split("x")[0]);
            int numAssentosPorFilaExecutiva = Integer.parseInt(comandos[2].split("x")[1]);
            int numFilaTuristica = Integer.parseInt(comandos[3].split("x")[0]);
            int numAssentosPorFilaTuristica = Integer.parseInt(comandos[3].split("x")[1]);
            voos.put(flightCode, new Voo(flightCode, new Aviao(flightCode, numFilaTuristica, numAssentosPorFilaTuristica, numFilaExecutiva, numAssentosPorFilaExecutiva)));
        }
    }

    public static void R(String[] comandos, HashMap<String, Voo> voos){
        if (comandos.length != 4) {
            System.out.println("Invalid reservation! Try: R <flightCode> <E|T> <numReservas>");
            return;
        }
    
        String flightCode = comandos[1];
        Voo voo = voos.get(flightCode);
        System.out.printf("%s:%d = ", flightCode, voo.getNumeroLugaresReservados() + 1);
    
        if (comandos[2].equals("E")) {
            if (!reservar(Integer.parseInt(comandos[3]), voos.get(flightCode).getAviao().getFilaClasseExecutiva(), voo, true))
                System.out.printf("Não foi possível obter lugares para a reserva: E %s\n", comandos[3]);
            else
                voos.get(flightCode).adicionarReservaLugar();       
        }
    
        //classe turistica
        if (comandos[2].equals("T")) {
            if (!reservar(Integer.parseInt(comandos[3]), voos.get(flightCode).getAviao().getFilaClasseTuristica(), voo, true))
                System.out.printf("Não foi possível obter lugares para a reserva: T %s\n", comandos[3]);
            else
                voos.get(flightCode).adicionarReservaLugar();                
        }
        System.out.println(); 
    }

    public static void C(String[] comandos, HashMap<String, Voo> voos){
        if (comandos.length != 2) {
            System.out.println("Invalid cancelation! Try: C <flightCode>:<reservationID>");
            return;
        }

        String flightCode = comandos[1].split(":")[0];
        int idReserva = Integer.parseInt(comandos[1].split(":")[1]);
        Voo voo = voos.get(flightCode);

        Assento lugares[][] = voo.getAviao().getFilaClasseExecutiva();
        cancelarReserva(lugares, idReserva);

        lugares = voo.getAviao().getFilaClasseTuristica();
        cancelarReserva(lugares, idReserva);
    }

    public static void Q() {
        System.out.println("A sair do programa...");        
    }

    public static String printMenu(){
        return "Options:\n\tI - Ler um ficheiro de texto com as informações sobre um voo\n"+
                "\tM - Mostrar o mapa das reservas de um voo\n" +
                "\tF - Acrescentar um novo voo\n" +
                "\tR - Acrescentar uma nova reserva a um voo\n" + 
                "\tC - Cancelar uma reserva\n" +
                "\tQ - Sair do programa\n";
    }

    public static boolean reservar(int numeroDeReservas, Assento[][] assento, Voo voo, boolean mostrarReserva){
        if(lugarLivre(assento) < numeroDeReservas){
            return false;
        }

        for (int i = 0; i < assento.length; i++) {
            if (verificarLugarLivre(assento[i])){
                for (int j = 0; j < assento[i].length; j++) {
                    if (numeroDeReservas > 0){
                        assento[i][j].setAssentoOcupado(true);
                        assento[i][j].setIdAssentoReservado(voo.getNumeroLugaresReservados() + 1);
                        numeroDeReservas--;

                        if (mostrarReserva){
                            printDetalhesReserva(assento, i, j, numeroDeReservas);
                        }
                    }
                }
            }
        }

        for (int i = 0; i < assento.length; i++){
            for (int j = 0; j < assento[i].length; j++){
                if (numeroDeReservas > 0 && !assento[i][j].getAssentoOcupado()){
                    assento[i][j].setAssentoOcupado(true);
                    assento[i][j].setIdAssentoReservado(voo.getNumeroLugaresReservados() + 1);
                    numeroDeReservas--;

                    if (mostrarReserva){
                        printDetalhesReserva(assento, i, j, numeroDeReservas);     
                    }
                }
            }
        }
        return true;
    }

    public static boolean verificarLugarLivre(Assento[] fila){
        for (int index = 0; index < fila.length; index++) {
            if(fila[index].getAssentoOcupado())
                return false;
        }
        return true;
    }

    public static int lugarLivre(Assento[][] assento){
        int count=0;
        for (int i = 0; i < assento.length; i++) {
            for (int j = 0; j < assento[i].length; j++) {
                if (!assento[i][j].getAssentoOcupado())
                    count++;
            }
        }
        return count;
    }

    public static void printDetalhesReserva(Assento[][] assento, int i, int j, int numReservas){
        System.out.printf("%d%c", assento[i][j].getFila(), assento[i][j].getLetraAssento());
        if (numReservas > 0){
            System.out.print(" | ");
        }
    }

    public static void cancelarReserva(Assento[][] lugares, int idReserva){
        for (int i = 0; i < lugares.length; i++) {
            for (int j = 0; j < lugares[i].length; j++) {
                if (lugares[i][j].getIdAssentoReservado() == idReserva) {
                    lugares[i][j].setAssentoOcupado(false);
                    lugares[i][j].setIdAssentoReservado(0);
                }
            }
        }
    }
}
