package aula1;

import java.util.Scanner;
import java.util.Stack;

public class ex103 {

    public static void main(String[] args) {
        //calculadora, 4 op aritmeticas notaçao pós fixa(Reverse Polish Notation)
        Boolean error = false;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a operation: ");
        while (sc.hasNext()) {
            String s = sc.nextLine();
            String[] splited = s.split(" ");
            Stack<Double> stack = new Stack<Double>();
            for (String str : splited) {
                if (str.equals("+")) {
                    stack.push(stack.pop() + stack.pop());
                } else if (str.equals("-")) {
                    stack.push(-stack.pop() + stack.pop());
                } else if (str.equals("*")) {
                    stack.push(stack.pop() * stack.pop());
                } else if (str.equals("/")) {
                    stack.push(1 / stack.pop() * stack.pop());
                } else {
                    try {
                        stack.push(Double.parseDouble(str));
                    } catch (NumberFormatException e) {
                        error = true;
                        System.out.println("ERROR. This character is not valid: " + str);
                    }
                }
            }
            if(!error){
                System.out.println(stack.pop());
                System.out.print("Result: ");
            }else{
                System.out.println("Invalid operation. Please try again.");
            }
        }
        sc.close();
    }
}
