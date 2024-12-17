package aula1;
import java.util.Scanner;
import java.util.Stack;
import java.io.File;
import java.io.FileNotFoundException;
public class ex104 {
    //numbers.txt tem int's associados ao nome do numero
    //ler input do user, traduzir nomes dos numeros para int's
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
            while (sc.hasNext()) {
                String s = sc.nextLine();
                String[] splited = s.split(" ");
                Stack<Double> stack = new Stack<Double>();
                System.out.print("Result: ");
                for (String str : splited) {
                    double number = returnIntegerFromTheFile(str);
                    if (number == -1000){
                        continue;
                    }else{
                        stack.push(number);
                        System.out.print(" ");
                        System.out.print(stack.pop());
                    }                     
                }
            }
        System.out.println();
        sc.close();
    }
        //read file
    

        public static double returnIntegerFromTheFile(String str){
            try (Scanner sc2 = new Scanner(new File("aula1/bloco1/numbers.txt"))) {
                while (sc2.hasNext()) {
                    String s = sc2.nextLine();
                    String[] splited = s.split(" ");
                    if (splited[2].equals(str)) {
                        return Double.parseDouble(splited[0]);
                    }
                }
            } catch (FileNotFoundException e) {
                System.out.println("File not found");
            }
            return -1000;
        }
}