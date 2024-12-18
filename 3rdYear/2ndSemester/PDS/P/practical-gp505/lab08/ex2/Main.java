package lab08.ex2;
import java.io.FileNotFoundException;

// javac lab08/ex2/Main.java
// java lab08/ex2/Main lab08/ex2/someFileName.txt

public class Main {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Please provide a file name as an argument.");
            return;
        }

        String fileName = args[0];

        try {
            TextReaderInterface reader = new NormalizationFilter(new TextReader(fileName));
            reader = new CapitalizationFilter(reader);
            
            while (reader.hasNext()) {
                System.out.println(reader.next());
            }
        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
        }
    }
}