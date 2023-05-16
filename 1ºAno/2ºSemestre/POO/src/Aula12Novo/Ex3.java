import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

public class Ex3 {
    public static void main(String[] args) {
        List<movie> movies = new ArrayList<>();

        String filename = "movies.txt";

        try {
            List<String> lines = Files.readAllLines(Paths.get(filename));
            String[] headers = lines.get(0).split("\t");

            for (int i = 1; i < lines.size(); i++) {
                String[] data = lines.get(i).split("\t");
                if (data.length == headers.length) {
                    String name = data[0];
                    double score = Double.parseDouble(data[1]);
                    String rating = data[2];
                    String genre = data[3];
                    int runningTime = Integer.parseInt(data[4]);

                    movie movie = new movie(name, score, rating, genre, runningTime);
                    movies.add(movie);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // by name
        Collections.sort(movies, Comparator.comparing(movie::getName));
        System.out.println("movies ordered by name:");
        for (movie movie : movies) {
            System.out.println(movie);
        }
        System.out.println();

        //by score (descending order)
        movies.sort(Comparator.comparingDouble(movie::getScore).reversed());
        System.out.println("movies ordered by score (descending):");
        for (movie movie : movies) {
            System.out.println(movie);
        }
        System.out.println();

        //by running time (ascending order)
        movies.sort(Comparator.comparingInt(movie::getRunningTime));
        System.out.println("movies ordered by running time (ascending):");
        for (movie movie : movies) {
            System.out.println(movie);
        }
        System.out.println();

        //distinct genres & counts
        Map<String, Integer> genreCounts = new HashMap<>();
        for (movie movie : movies) {
            String genre = movie.getGenre();
            genreCounts.put(genre, genreCounts.getOrDefault(genre, 0) + 1);
        }
        System.out.println("Distinct genres and their counts:");
        for (Map.Entry<String, Integer> entry : genreCounts.entrySet()) {
            System.out.println(entry.getKey() + ": " + entry.getValue());
        }
        System.out.println();

        // score > 60 & matching user-specified genre to "myselection.txt"
        String userGenre = "action"; // Replace with drama, horror, comedy, action, suspense
        double scoreThreshold = 60.0;
        String outputFile = "myselection.txt";
        try (PrintWriter writer = new PrintWriter(new FileWriter(outputFile))) {
            for (movie movie : movies) {
                if (movie.getScore() > scoreThreshold && movie.getGenre().equalsIgnoreCase(userGenre)) {
                    writer.println(movie);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
