package lab01.ex1;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class test {
    public static void main(String[] args) {
        File file = new File("lab01/ex1/words.txt");
        System.out.printf("The file is valid: %b \n", isValid(file));
    }

    public static boolean isValid(File filename) {
        int prev = 0;
        int rowsCounter = -1; // -1 to ignore the last line
        boolean puzzleFinished = false;
        boolean temporaryUpperCheck = true;
        try (BufferedReader br = new BufferedReader(new FileReader(filename))) {
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
                if (!puzzleFinished) {
                    if (rowsCounter > 40 || line.length() > 40) // check if max size is reached
                        return false;

                    for (int i = 0; i < line.length(); i++) { 
                        if (isPuzzleEnd(line.charAt(i))){
                            puzzleFinished = true;
                            temporaryUpperCheck = true;
                        }
                        else if (!allUppercase(line.charAt(i))){
                            temporaryUpperCheck = false;
                        }
                    }

                    rowsCounter++;
                    if (prev != 0) { // checks if it's the first line
                        if (prev != line.length()) // checks if the columns are the same size
                            return false;
                    }
                    prev = line.length();
                } else {
                    lineWordsValid(line);
                }
                if(!temporaryUpperCheck){ // if it's not all uppercase and it's not the end of the puzzle
                    System.out.println("at least on lower");
                    return false;}
            }
            System.out.println("Columns: " + prev + " Rows: " + rowsCounter);

            if (prev != rowsCounter) { // checks if it's square
                return false;
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }

    public static boolean allUppercase(char characterToCheck) {
        if (Character.isLowerCase(characterToCheck)) 
            return false;
        return true;
    }

    public static boolean isPuzzleEnd(char characterToCheck) {
        char endOfPuzzleSymbol[] = new char[] { ';', ',', ' ' };
        for (char endSymbol : endOfPuzzleSymbol) {
            // System.out.println("Checking if " + characterToCheck + " is equal to " + endSymbol);
            if (endSymbol == characterToCheck){
                System.out.println("check for the puzzle end " + characterToCheck);
                return true;
            }
        }
        return false;
    }

    public static boolean lineWordsValid(String line) {
        String[] words = line.split("[, ;]+");
        for (String word : words) {
            System.out.println(word);
            boolean isValid = wordIsValid(word);
            System.out.println("Is the word valid? " + isValid);
        }
        return true;
    }

    public static boolean wordIsValid(String word) {
        // Só tem maiusculas?
        if (word.chars().allMatch(Character::isUpperCase)) {
            System.out.println("ALERT: This word only has uppercase letters: " + word);
            return false;
        }

        // São todas letras?
        if (!word.chars().allMatch(Character::isLetter)) {
            System.out.println("ALERT: Word contains non alphabetical characters: " + word);
            return false;
        }

        return true;
    }

}