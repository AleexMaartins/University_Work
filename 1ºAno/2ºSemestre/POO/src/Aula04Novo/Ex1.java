package Aula04Novo;

import java.util.Scanner;

public class Ex1{
    public static Scanner input = new Scanner(System.in);
    public static void main(String[] args){
        double lado1,lado2,lado3;
        System.out.println("Escolha uma opcao:");
        System.out.println("1 - Triangulo");
        System.out.println("2 - Circulo");
        System.out.println("3 - Retangulo");
        int opcao = askForAnIntPos();
        switch(opcao){
            case 1:
                do{
                    System.out.println("Digite o lado 1:");
                    lado1 = askForADoublePos();
                    System.out.println("Digite o lado 2:");
                    lado2 = askForADoublePos();
                    System.out.println("Digite o lado 3:");
                    lado3 = askForADoublePos();
                }while( desigualdadeTriangularValida(lado1, lado2, lado3) == false);
                Ex1Triangulo triangulo = new Ex1Triangulo(lado1, lado2, lado3);
                triangulo.calcularArea();
                triangulo.calcularPerimetro();
                triangulo.imprimir();
                break;
            case 2:
                System.out.println("Digite o raio:");
                double raio = askForADoublePos();
                Ex1Circulo circulo = new Ex1Circulo(raio);
                circulo.calcularArea();
                circulo.calcularPerimetro();
                circulo.imprimir();
                break;
            case 3:
                System.out.println("Digite o comprimento:");
                double comprimento = askForADoublePos();
                System.out.println("Digite a altura:");
                double altura = askForADoublePos();
                Ex1Retangulo retangulo = new Ex1Retangulo(comprimento, altura);
                retangulo.calcularArea();
                retangulo.calcularPerimetro();
                retangulo.imprimir();
                break;
            default:
                System.out.println("Opcao invalida");
                break;
        }

    }

    private static double askForADoublePos() {
        double nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Digite uma medida positiva: ");
                nr = input.nextDouble();
                if(nr < 0){
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Valor digitado negativo!!");
                    System.out.println("____________________________");
                    System.out.println("");
                    continue;
                }
                check = false;
            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Valor digitado nao inteiro!!");
                System.out.println("____________________________");
                System.out.println("");

                input.nextLine();
            }
        }
        return nr;
    }
    private static boolean desigualdadeTriangularValida(double a, double b, double c){
        if(a<b+c && b<a+c && c<a+b)
            return true;
        else
            return false;    
    }
    
    private static int askForAnIntPos() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Digite uma opção: ");
                nr = input.nextInt();
                if (nr <= 0 || nr > 3) {
                    System.out.println("____________________________");
                    System.out.println("");
                    System.out.println("Opção invalida!!");
                    System.out.println("____________________________");
                    System.out.println("");                    
                    continue;
                }
                check = false;

            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("");
                System.out.println("Valor digitado nao inteiro!!");
                System.out.println("____________________________");
                System.out.println("");
                input.nextLine();
            }
        }
        return nr;
    }

}