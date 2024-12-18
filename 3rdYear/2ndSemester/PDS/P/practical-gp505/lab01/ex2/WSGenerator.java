package lab01.ex2;

import java.io.*;
import java.util.*;

public class WSGenerator {
    private char[][] board;
    private List<String> words;
    private Random random = new Random();

    public WSGenerator(List<String> words, int size) {
        this.words = words;
        this.board = new char[size][size];

        fillBoard(size);

        // Sort words in descending order of length
        words.sort((a, b) -> b.length() - a.length());

        Deque<String> currentSizeWords = new ArrayDeque<>();
        Deque<String> smallerWords = new ArrayDeque<>();
        int currentWordSize = words.get(0).length(); // Start with the largest word size

        for (String word : words) {
            if (word.length() == currentWordSize) {
                currentSizeWords.add(word);
            } else {
                smallerWords.add(word);
            }
        }

        int attempts = 0;
        boolean wasInvertedHorizontally = false;
        boolean wasInvertedVertically = false;
        while (!currentSizeWords.isEmpty() || !smallerWords.isEmpty()) {
            String word;
            if (!currentSizeWords.isEmpty()) {
                word = currentSizeWords.pop().toUpperCase().trim();
                // System.out.println("Placing word: " + word);
            } else {
                // Move to the next word size
                currentWordSize--;
                while (!smallerWords.isEmpty() && smallerWords.peek().length() == currentWordSize) {
                    currentSizeWords.add(smallerWords.pop());
                }
                continue;
            }

            int x = random.nextInt(size);
            int y = random.nextInt(size);

            // can place word horizontally
            if (y + word.length() <= size && isSpaceAvailable(board, x, y, 0, 1, word)) {

                if (wasInvertedHorizontally) {
                    canPlaceWordHorizontallyInverted(x,y,word);
                    wasInvertedHorizontally = false;
                } else{
                canPlaceWordHorizontally(x, y, word);
                wasInvertedHorizontally = true;
                }
                attempts = 0; // reset attempts

            // can place word vertically
            } else if (x + word.length() <= size && isSpaceAvailable(board, x, y, 1, 0, word)) {
                if (!wasInvertedVertically) {
                    canPlaceWordVerticallyInverted(x,y,word);
                    wasInvertedVertically = false;
                } else{
                    canPlaceWordVertically(x, y, word);
                    wasInvertedVertically = true;
                }

                attempts = 0; // reset attempts
            } else {
                currentSizeWords.addFirst(word);
                attempts++;
                if (attempts >= 100) {
                    currentSizeWords.clear();
                    throw new IllegalArgumentException("Unable to place all words on the board");
                }
            }
        }
        fillBoardWithRandomChars(size); //replace empty spaces with random characters
    }


    private void canPlaceWordHorizontally(int x, int y, String word) {
        for (int i = 0; i < word.length(); i++) {
            board[x][y + i] = word.charAt(i);
        }
    }
    private  void canPlaceWordHorizontallyInverted(int x, int y, String word) {
        int a = word.length()-1;
        for (int i = 0; i < word.length(); i++) {
            board[x ][y+ a] = word.charAt(i);
            a--;
        }
    }
    private void canPlaceWordVertically(int x, int y, String word) {
        for (int i = 0; i < word.length(); i++) {
            board[x + i][y] = word.charAt(i);
            System.out.println("x: " + x + " y: " + y + " i: " + i + " NORMALword: " + word.charAt(i) );
        }
    }
    private void canPlaceWordVerticallyInverted(int x, int y, String word) {
        int a = word.length()-1;
        for (int i = 0; i < word.length(); i++) {
            board[x + a][y] = word.charAt(i);
            a--;
        }
    }

    private void fillBoard(int size) {
        for (int i = 0; i < size; i++) {
            Arrays.fill(board[i], '.');
        }
    }

    private void fillBoardWithRandomChars(int size) {
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (board[i][j] == '.') {
                    board[i][j] = (char) ('A' + random.nextInt(26));
                }
            }
        }
    }

    private static boolean isSpaceAvailable(char[][] board, int x, int y, int dx, int dy, String word) {
        for (int i = 0; i < word.length(); i++) {
            if (board[x + dx * i][y + dy * i] != '.') {
                return false;
            }
        }
        return true;
    }

    public void saveToFile(String filename) throws IOException {
        try (PrintWriter writer = new PrintWriter(new File(filename))) {
            for (char[] row : board) {
                StringBuilder sb = new StringBuilder();
                for (char c : row) {
                    sb.append(c);
                }
                writer.println(sb.toString());
            }
            writer.println(String.join(";", words));
        }
    }

    public static void main(String[] args) {
        if (args.length != 6) {
            System.out.println("Usage: WSGenerator -i <wordlist file> -s <size> -o <output file>");
            return;
        }
        String wordlistFile = args[1];
        int size = Integer.parseInt(args[3]);
        String outputFile = args[5];

        List<String> words = new ArrayList<>();
        try (Scanner scanner = new Scanner(new File(wordlistFile))) {
            while (scanner.hasNextLine()) {
                words.add(scanner.nextLine().trim());
            }
        } catch (FileNotFoundException e) {
            System.out.println("Word list file not found.");
            return;
        }
        WSGenerator generator = new WSGenerator(words, size);
        try {
            generator.saveToFile(outputFile);
        } catch (IOException e) {
            System.out.println("Error writing to output file.");
        }
    }
}