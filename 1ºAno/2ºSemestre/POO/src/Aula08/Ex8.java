package Aula08;

import java.util.Scanner;

public class Ex8 {
    public static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        Motociclo mota = new Motociclo("XQ-33-XQ", "Honda", "Fireblade", 322, "Estrada");
        Motociclo mota2 = new Motociclo("AA-22-AA", "Ducati", "Scrambler", 214, "Desportivo");
        Taxi taxi = new Taxi("AA-AA-AA", "Porsche", "Panamera", 420, 4, 300, 68);
        System.out.println("Mota 1 :" + mota.getMatricula() + ", Marca: " + mota.getMarca() + ", Modelo: "
                + mota.getModelo() + ", Potencia: " + mota.getPotencia() + ", Tipo: " + mota.getTipo()
                + ", Modelo: " + mota.getModelo());
        System.out.println("Mota 2 :" + mota2.getMatricula() + ", Marca: " + mota2.getMarca() + ", Modelo: "
                + mota2.getModelo() + ", Potencia: " + mota2.getPotencia() + ", Tipo: " + mota2.getTipo()
                + ", Modelo: " + mota2.getModelo());
        System.out.println("Taxi :" + taxi.getMatricula() + ", Marca: " + taxi.getMarca() + ", Modelo: "
                + taxi.getModelo() + ", Potencia: " + taxi.getPotencia() + ", Nr de Quadro: " + taxi.getNrQuadro()
                + ", Capacidade da bagageira: " + taxi.getCapBagageira() + ", Nr de licenca: " + taxi.getNrLicenca());

    }
}