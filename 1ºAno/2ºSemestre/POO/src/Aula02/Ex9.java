package Aula02;
import java.util.Scanner;
public class Ex9 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Insert a number to be counted down from: ");
        int N = input.nextInt();
        System.out.println("Numbers: ");

        while (N!=0){
            System.out.println(N);
            if(N % 10 == 0 ){
                System.out.println();
            }
            N--;
        }
    }
}
