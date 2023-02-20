package Aula02;
import java.util.Scanner;
import java.util.ArrayList;
public class Ex10 {
    public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Insert real numbers, to stop insert the first number sent:");
    double number = input.nextDouble();
    ArrayList<Double> arrayList = new ArrayList<Double>();
    
    do{
        arrayList.add(number);
        number = input.nextDouble();
    }while(number != arrayList.get(0));
    }
}
//FALTA ACABAR