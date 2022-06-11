package Aula11;

import java.util.ArrayList; // import the ArrayList class
import java.io.*;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Ex11_1 {

    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new File("src/Aula11/major.txt"));
        String lol = input.nextLine();

        String regex = "[\\p{Punct}]";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(input);

        while (input.hasNext()) {
            if (input.next())
                System.out.println(input.nextLine());
            input.close();
        }
    }
}