package HelperUtills;

import java.util.Scanner;

public class trycatchDouble {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        double valor;
        double primeiroValor = 0;
        double soma = 0;
        int contador = 0;
        boolean check = true;

        System.out.println();
        System.out.println("(Para terminar a contagem insira o primeiro numero enviado, este ultimo nao afetara a contagem,soma,minimo,maximo ou media)");
        System.out.print("Digite um número real: ");
        while(check){
            try {
                primeiroValor = input.nextDouble();
                check = false;

            } catch (Exception e) {
                System.out.println("INSIRA UM NUMERO REAL!!!!!!!1!!1");
                System.out.print("Digite um número real: ");
                input.nextLine();
            }
        }
        
        valor = primeiroValor;
        double maximo = valor ;
        double minimo = valor;
        do{
            soma += valor;
            contador++;
            if (valor > maximo) {
                maximo = valor;
            }
            if (valor < minimo) {
                minimo = valor;
            }
            check = true;
            System.out.print("Digite outro número real: ");

            while(check){
                try {
                    valor = input.nextDouble();
                    check = false;
    
                } catch (Exception e) {
                    System.out.println("Por favor insira um numero real!");
                    System.out.print("Digite outro número real: ");
                    input.nextLine();
                }
            }
        }while (valor != primeiroValor);
        
        if (contador == 0) {
            System.out.println("Nenhum número foi digitado.");
        }
            double media = soma / contador;
            System.out.println("Valor máximo: " + maximo);
            System.out.println("Valor mínimo: " + minimo);
            System.out.println("Média: " + media);
            System.out.println("Total de números lidos: " + contador);
        
    }
}

// Escreva um programa que leia um conjunto de números reais do teclado, terminado por um 
// valor igual ao primeiro que foi introduzido. No fim, indique o valor máximo, o valor mínimo, 
// a média e o total de número lidos