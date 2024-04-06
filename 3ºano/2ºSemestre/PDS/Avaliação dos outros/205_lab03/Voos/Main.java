package lab03.Voos;

import java.util.Scanner;
import java.util.HashMap;

public class Main {

    public static void main(String[] args){
        HashMap<String, Voo> voos = new HashMap<String, Voo>();     //hash map com <código:Voo>
        Scanner input = new Scanner(System.in);
        String opcoes = "";
        String comandos[];

        while(!(opcoes.split(" "))[0].equalsIgnoreCase("Q")){
            System.out.println("Escolha uma opção: (H para ajuda) ");
            opcoes = input.nextLine();
            comandos = opcoes.split(" ");

            switch(comandos[0].toUpperCase()){
                case "H":
                    Opcoes.H();
                    break;
                case "I":
                    Opcoes.I(comandos, voos);
                    break;

                case "M":
                    Opcoes.M(comandos, voos);
                    break;

                case "F":
                    Opcoes.F(comandos, voos);
                    break;

                case "R":
                    Opcoes.R(comandos, voos);
                    break;

                case "C":
                    Opcoes.C(comandos, voos);
                    break;

                case "Q":
                    Opcoes.Q();
                    break;

                default:
                    System.out.println("Opção inválida, escolha H para ajuda.");
            }
        }
        input.close();
    }

    
}