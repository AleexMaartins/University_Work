package Aula04Novo;

import java.util.Arrays;
import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        kms = distance + kms;// DONE: acumular distância percorrida
    }

    @Override
    public String toString() {
        return make + " " + model + ", " + year + ", kms: " + kms;
    }

}

public class Ex4CarDemoPIU {

    static Scanner sc = new Scanner(System.in);

    static boolean checkFormat(String input) {
        String[] info = input.split(" ");
        // check for all fields' presence
        if (info.length < 4) {
            return false;
        }
        // check year size
        if (info[info.length - 2].length() != 4) {
            return false;
        }

        // check if last 2 fields are integers and positive
        try {
            if (Integer.parseInt(info[info.length - 1]) < 1 || Integer.parseInt(info[info.length - 2]) < 1) {
                return false;
            }
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    static int addCarToArray(Car[] cars, String make, String model, int year, int kms) {
        for (int i = 0; i < cars.length; i++) {
            if (cars[i] == null) {
                cars[i] = new Car(make, model, year, kms);
                return 1;
            }
        }
        return 0;
    }

    static int registerCars(Car[] cars) {
        int registeredCars = 0;
        while (true) {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            String userInput = sc.nextLine();
            // check for end of request (enter)
            if (userInput.equals("")) {
                break;
            }
            // check format
            if (!checkFormat(userInput)) {
                System.out.println("Dados mal formatados. Tente novamente.");
                continue;
            }
            // parse data
            String[] info = userInput.split(" ");
            String make = info[0];
            StringBuilder modelInfo = new StringBuilder();
            for (String word : Arrays.copyOfRange(info, 1, info.length - 2)) {
                modelInfo.append(word).append(" ");
            }
            modelInfo.deleteCharAt(modelInfo.length() - 1);
            String model = modelInfo.toString();
            int year = 0;
            int kms = 0;
            try {
                year = Integer.parseInt(info[info.length - 2]);
                kms = Integer.parseInt(info[info.length - 1]);
            } catch (Exception e) {
                System.out.println("Sumn wrong" + e.getLocalizedMessage());
                System.exit(1);
            }
            // iterate array and put new car if not full
            registeredCars += addCarToArray(cars, make, model, year, kms);
        }
        return registeredCars;
    }

    static void registerTrips(Car[] cars, int numCars) {
        while (true) {
            System.out.print("Registe uma viagem no formato \"carro:distância\": ");
            String userInput = sc.nextLine();
            // check for end of request (enter)
            if (userInput.equals("")) {
                break;
            }
            // check format
            if (!userInput.matches("^[0-9]+:[0-9]+$")) {
                System.out.println("Dados mal formatados. Tente novamente.");
                continue;
            }
            // parse data
            String[] info = userInput.split(":");
            int carIndex = 0;
            int driveKms = 0;
            try {
                carIndex = Integer.parseInt(info[0]);
                driveKms = Integer.parseInt(info[1]);
            } catch (Exception e) {
                System.out.println("Sumn wrong" + e.getLocalizedMessage());
                System.exit(1);
            }
            // drive the amount specified in the specified car if such car exists
            if (carIndex >= 0 && carIndex < numCars) {
                cars[carIndex].drive(driveKms);
            }
        }
    }

    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        for (Car car : cars) {
            if (car != null) System.out.println(car);
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars > 0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

        sc.close();

    }
}
