// package Aula04Novo;

// import java.util.Scanner;

// class Car {
//     public String make;
//     public String model;
//     public int year;
//     public int kms;

//     public Car(String make, String model, int year, int kms) {
//         this.make = make;
//         this.model = model;
//         this.year = year;
//         this.kms = kms;
//     }

//     @Override
//     public String toString() {
//         return make + " " + model + ", " + year + ", kms: " + kms;
//     }

//     public void drive(int distance) {
//         kms = distance + kms;// DONE: acumular distância percorrida
//     }
// }

// public class Ex4CarDemo {

//     static Scanner input = new Scanner(System.in);

//     static int registerCars(Car[] cars) {
//         // DONE: pede dados dos carros ao utilizador e acrescenta ao vetor 
//         // registo de carros termina quando o utilizador inserir uma linha vazia 
//         // devolve número de carros registados 
//         System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
//         String[] dados = input.nextLine().split(" ");
//         System.out.print(dados.length);
        
//         int palavrasEmModelo = dados.length-3;
//         int numCars = 0;
//         int kms;
//         while (!dados[0].isEmpty()) {
//             String marca = dados[0];
//             for(int i = 1; i < palavrasEmModelo; i++)
//                 dados[1] += " " + dados[i];
//             String modelo = dados[1];
//             int ano = Integer.parseInt(dados[-2]);
//                 if(ano <1000 || ano>9999){
//                     System.out.println("Ano inválido. Tente novamente.");
//                     continue;}
//             kms = Integer.parseInt(dados[-1]);
//             cars[numCars] = new Car(marca, modelo, ano, kms);
//             numCars++;
//             System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
//             dados = input.nextLine().split(" ");
//         }
//         return numCars;
//     }

//     static void registerTrips(Car[] cars, int numCars) {
//         // DONE: pede dados das viagens ao utilizador e atualiza informação do carro
//         // registo de viagens termina quando o utilizador inserir uma linha vazia
//         System.out.print("Registe uma viagem no formato \"carro:distância\": ");
//         String[] dados = input.nextLine().split(":");
//         while (!dados[0].isEmpty()) {
//             int car = Integer.parseInt(dados[0]);
//             int kms = Integer.parseInt(dados[1]);
//             cars[car].drive(kms);
//             System.out.print("Registe uma viagem no formato \"carro:distância\": ");
//             dados = input.nextLine().split(":");
//         }
//     }

//     static void listCars(Car[] cars) {
//         // DONE: lista todos os carros registados
//         // Exemplo de resultado
//         System.out.println("\nCarros registados: ");
//         for (Car car : cars) {
//             System.out.println(car);
//         }
//         System.out.println("\n");

//         // Carros registados:
//         // Toyota Camry, 2010, kms: 234346
//         // Renault Megane Sport Tourer, 2015, kms: 32536

//         System.out.println("\n");
//     }

//     public static void main(String[] args) {

//         Car[] cars = new Car[10];

//         int numCars = registerCars(cars);

//         if (numCars > 0) {
//             listCars(cars);
//             registerTrips(cars, numCars);
//             listCars(cars);
//         }

//     }

//     // private static String askForMarcaModeloAnoKms() {
//     //     String marca;
//     //     String modelo;
//     //     String ano;
//     //     String kms;
//     //     int palavrasEmModelo;
//     //     System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
//     //     String[] dados = input.nextLine().split(" ");

//     //     if (dados.length == 0) //se introduzida linha em branco acaba a adiçao de carros
//     //         break;

//     //     if (dados.length < 4) { // está em falta um ou mais elementos pedidos
//     //         System.out.println("Dados mal formatados. Tente novamente.");
//     //         continue;
//     //     }
   


        
        
//     //     return nr;
//     // }

// }