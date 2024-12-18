package lab01.ex1;

import java.util.List;
// java lab01\ex1\WSSolver.java .\lab01\ex1\words.txt

public class WSSolver {
    public static void main(String[] args) {
        if (args.length == 0) {
            System.out.println("Usage: lab01/java WSSolver [filename.txt]");
            System.exit(1);
        }

        String filename = args[0];
        List<String> fileLines = Utils.readFile(filename);
        WordSoup soup = new WordSoup(fileLines); // valida o ficheiro e cria a sopa de letras
        System.out.println(soup.getResults());
    }
}