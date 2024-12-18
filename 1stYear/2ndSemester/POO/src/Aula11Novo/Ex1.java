import java.io.*;
import java.util.*;

public class Ex1 {
    public static void main(String[] args) {
        Map<String, Integer> wordPairs = new HashMap<>();

        try (BufferedReader br = new BufferedReader(new FileReader("major.txt"))) {
            String line;

            while ((line = br.readLine()) != null) {
                String[] words = line.split("[\\s.,:;?!\\-_*{}=+&/\\(\\)\\[\\]\"“”'‘’]+");

                for (int i = 0; i < words.length - 1; i++) {
                    String word1 = words[i].toLowerCase();
                    String word2 = words[i+1].toLowerCase();

                    if (word1.length() >= 3 && word2.length() >= 3) {
                        String pair = word1 + " " + word2;
                        wordPairs.put(pair, wordPairs.getOrDefault(pair, 0) + 1);
                    }
                }
            }

            for (Map.Entry<String, Integer> entry : wordPairs.entrySet()) {
                System.out.println(entry.getKey() + "={" + entry.getValue() + "}");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
