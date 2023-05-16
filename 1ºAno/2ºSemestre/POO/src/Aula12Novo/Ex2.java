import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Ex2 {
    public static void main(String[] args) {
        List<String> words = new ArrayList<>();

        String filename = "words.txt";
        Map<Character, Map<String, Integer>> wordCounts = new TreeMap<>();

        try {
            words = Files.readAllLines(Paths.get(filename));
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (String line : words) {
            String[] tmp = line.split("\\s+");
            for (String word : tmp) {
                if (word.length() == 0)
                    continue;
                word = word.replaceAll("[^a-zA-Z]", " ");
                word = word.trim();
                word = word.toLowerCase();
                char initial = word.charAt(0);
                if (wordCounts.containsKey(initial)) {
                    Map<String, Integer> countMap = wordCounts.get(initial);
                    countMap.put(word, countMap.getOrDefault(word, 0) + 1);
                } else {
                    Map<String, Integer> countMap = new HashMap<>();
                    countMap.put(word, 1);
                    wordCounts.put(initial, countMap);
                }
            }
        }

        try (PrintWriter writer = new PrintWriter(new FileWriter("FICHEIROPALAVRASPARAODOZEPONTO2!!!!!!!!!!!.txt"))) {
            for (char initial : wordCounts.keySet()) {
                writer.println(initial + ":");
                Map<String, Integer> countMap = wordCounts.get(initial);

                for (String word : countMap.keySet()) {
                    int count = countMap.get(word);
                    writer.println(word + ", " + count + ";");
                }

                writer.println();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
