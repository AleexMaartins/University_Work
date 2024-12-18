package lab08.ex2;
import java.io.File;
import java.util.Scanner;
import java.io.FileNotFoundException;

public class TextReader implements TextReaderInterface {
    private Scanner scanner;

    public TextReader(String fileName) throws FileNotFoundException {
        scanner = new Scanner(new File(fileName));
    }

    public boolean hasNext() {
        return scanner.hasNext();
    }

    public String next() {
        return scanner.next();
    }
}