package lab01.ex1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public class WordSoup {
    private List<String> fileLines;
    private Set<String> words;
    private List<List<Character>> puzzleChar;

    public WordSoup(List<String> fileLines) {
        this.fileLines = fileLines;
        this.words = new LinkedHashSet<>();
        this.puzzleChar = new ArrayList<>();
        // always required to load words and puzzle into memory
        if (!this.validateFile()) {
            System.out.println("Error: The submited .txt file is not valid.");
            System.exit(1);
        }
    }

    // --------------------------------- Methods to validate the file

    public boolean puzzleIsValid() {
        int puzzleLineSize = this.fileLines.get(0).length(); 

        // validate for maximum size of 40
        if (puzzleLineSize > 40) {
            System.out.println("Puzzle size is too big. Max size is 40x40");
            return false;
        }

        // passar por todas as linhas do puzzle e verificar se são válidas
        for (int i = 0; i < puzzleLineSize; i++) {
            if (!puzzleIsValidLine(this.fileLines.get(i), puzzleLineSize)) {
                return false;
            }
        }

        // iterate all puzzle lines
        for (int i = 0; i < puzzleLineSize; i++) {
            if (!puzzleIsValidLine(this.fileLines.get(i), puzzleLineSize)) {
                return false;
            }
            // current String to char array, then to List<Character> and add it to
            // puzzleChar
            puzzleChar.add(
                    Arrays.asList(this.fileLines.get(i).chars().mapToObj(c -> (char) c).toArray(Character[]::new)));
        }
        return true;
    }

    public boolean puzzleIsValidLine(String line, int puzzleLineSize) {
        
        // vê se a linha tem apenas letras maiúsculas
        for (int j = 0; j < puzzleLineSize; j++) {
            if (!Character.isUpperCase(line.charAt(j))) {
                System.out.println("Alert: Character noit in uppercase: " + line.charAt(j));
                return false;
            }
        }
        
        // vê se a linha tem o tamanho correto
        if(line.length() != puzzleLineSize){
            return false;
        }

        return true;
    }

    public boolean wordsAreValid() {
        int startingIndex = this.fileLines.get(0).length();
        
        for (int i = startingIndex; i < this.fileLines.size(); i++) {

            // faz a separação das palavras por vírgulas, ponto e vírgula e espaços
            String[] wordsInLine = this.fileLines.get(i).split("[,; ]");
            for (int j = 0; j < wordsInLine.length; j++) {
                if (!wordIsValid(wordsInLine[j])) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean wordIsValid(String word) {
        
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
        
        this.words.add(word);

        // a) Verificar se a palavra não está contida em nenhuma outra palavra
        List<String> wordsToRemove = new ArrayList<>();
        for (String w : words) {
            if (w.toLowerCase().contains(word.toLowerCase()) && !w.equalsIgnoreCase(word)) {
                wordsToRemove.add(word);
            }
        }

        words.removeAll(wordsToRemove);

        return true;
    }

    // Verifica se o ficheiro é válido
    public boolean validateFile() {
        return puzzleIsValid() && wordsAreValid();
    }

    // --------------------------------- Methods to solve the puzzle

    public Solution findWord(String word) throws Exception {
        String originalWord = word;
        word = word.toUpperCase();
        List<Solution> wordSolutions = new ArrayList<>();

        for (int line = 0; line < this.puzzleChar.size(); line++) {
            for (int column = 0; column < this.puzzleChar.get(line).size(); column++) {
                // verifica se a primeira letra da palavra é a mesma que a letra na posição atual
                if (this.puzzleChar.get(line).get(column) == word.charAt(0)) {
                    // vê se está horizontal
                    String horizontalResult = findHorizontal(word, line, column);
                    if (!horizontalResult.equals("")) {
                        wordSolutions
                                .add(new Solution(new int[] { line + 1, column + 1 }, originalWord, horizontalResult));
                    }
                    // ver se está vertical
                    String verticalResult = findVertical(word, line, column);
                    if (!verticalResult.equals("")) {
                        wordSolutions
                                .add(new Solution(new int[] { line + 1, column + 1 }, originalWord, verticalResult));
                    }
                    //vê se está na diagonal
                    String diagonalResult = findDiagonal(word, line, column);
                    if (!diagonalResult.equals("")) {
                        wordSolutions
                                .add(new Solution(new int[] { line + 1, column + 1 }, originalWord, diagonalResult));
                    }
                }
            }
        }
        
        // se a palavra for encontrada mais do que uma vez
        if (wordSolutions.size() > 1) {
            String error = String.format("Word %s found multiple times in puzzle\n", originalWord);
            throw new Exception(error);
        }

        // se a palavra não for encontrada
        if (wordSolutions.isEmpty()) {
            String error = String.format("Word %s not found in puzzle\n", originalWord);
            throw new Exception(error);
        }

        return wordSolutions.get(0);
    }

    public String findHorizontal(String word, int line, int column) {

        // verifica se a palavra está à direita
        int i;
        int columnVal = column; 
        for (i = 0; columnVal < this.puzzleChar.get(line).size() && i < word.length(); columnVal++, i++) {
            char puzzleChar = this.puzzleChar.get(line).get(columnVal);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        if (i == word.length()) {
            return "Right";
        }

        // se a palavra estiver à esquerda
        for (i = 0; column >= 0 && i < word.length(); column--, i++) {
            char puzzleChar = this.puzzleChar.get(line).get(column);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        if (i == word.length()) {
            return "Left";
        }

        return ""; // sem conclusão
    }

    public String findVertical(String word, int line, int column) {
        // Tem de ser uppercase

        // verifica se a palavra está em cima
        int i;
        int lineVal = line; // variável temporária para não modificar a variável line
        for (i = 0; lineVal >= 0 && i < word.length(); lineVal--, i++) {
            char puzzleChar = this.puzzleChar.get(lineVal).get(column);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        if (i == word.length()) {
            return "Up";
        }

        // verifica se a palavra está em baixo
        for (i = 0; line < this.puzzleChar.size() && i < word.length(); line++, i++) {
            char puzzleChar = this.puzzleChar.get(line).get(column);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        // if we get here
        if (i == word.length()) {
            return "Bottom";
        }

        return "";

    }

    public String findDiagonal(String word, int line, int column) {
        // palavra tem de ser uppercase

        int i;
        int lineVal = line;
        int columnVal = column; // variavel temporária para não modificar a variável column/line

        // verifica se a palavra está na diagonal superior esquerda
        for (i = 0; lineVal >= 0 && columnVal >= 0 && i < word.length(); lineVal--, columnVal--, i++) {
            char puzzleChar = this.puzzleChar.get(lineVal).get(columnVal); 
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        if (i == word.length()) {
            return "UpLeft";
        }

        // reset 
        lineVal = line;
        columnVal = column;

        // verifica se a palavra está na diagonal superior direita
        for (i = 0; lineVal >= 0 && columnVal < this.puzzleChar.size()
                && i < word.length(); lineVal--, columnVal++, i++) {
            char puzzleChar = this.puzzleChar.get(lineVal).get(columnVal);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        if (i == word.length()) {
            return "UpRight";
        }

        // reset 
        lineVal = line;
        columnVal = column;

        // verifica se a palavra está na diagonal inferior esquerda
        for (i = 0; lineVal < this.puzzleChar.size() && columnVal >= 0
                && i < word.length(); lineVal++, columnVal--, i++) {
            char puzzleChar = this.puzzleChar.get(lineVal).get(columnVal);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        if (i == word.length()) {
            return "BottomLeft";
        }

        // reset 
        lineVal = line;
        columnVal = column;

        for (i = 0; lineVal < this.puzzleChar.size() && columnVal < this.puzzleChar.size()
                && i < word.length(); lineVal++, columnVal++, i++) {
            char puzzleChar = this.puzzleChar.get(lineVal).get(columnVal);
            if (word.charAt(i) != puzzleChar) {
                break;
            }
        }

        // if we get here
        if (i == word.length()) {
            return "BottomRight";
        }

        return "";
    }

    public List<Solution> solvePuzzle() {
         List<Solution> result = new ArrayList<>();
        try {
            for (String term : this.words) {
                result.add(findWord(term));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return Collections.emptyList();
        }
    return result;

    }

    public String getResults() {
        // ------ Primeira Parte do output ------
        StringBuilder strbld = new StringBuilder();
        List<Solution> sol = solvePuzzle();
        for (Solution s : sol) {
            strbld.append(s);
        }
        strbld.append("\n");

        // ------ Segunda parte do output ------

        List<List<Character>> solvedPuzzleStr = new ArrayList<>();
        // mete os pontos no array
        for (int i = 0; i < this.puzzleChar.size(); i++) {
            List<Character> line = new ArrayList<>();
            for (int j = 0; j < this.puzzleChar.size(); j++) {
                line.add('.');
            }
            solvedPuzzleStr.add(line);
        }

        for (int i = 0; i < this.puzzleChar.size(); i++) {
            for (int j = 0; j < this.puzzleChar.size(); j++) {
                for (Solution s : sol) {
                    int[] startingCoordinates = s.getStartingCoordinates();
                    if (startingCoordinates[0] == i + 1 && startingCoordinates[1] == j + 1) {
                        // se for igual, adiciona a palavra 
                        String word = s.getWord();
                        String direction = s.getDirection();
                        int lineVal = i;
                        int columnVal = j;
                        for (int k = 0; k < word.length(); k++) {
                            solvedPuzzleStr.get(lineVal).set(columnVal, word.charAt(k));

                            switch (direction) {

                                case "Right":
                                    columnVal++;
                                    break;
                                
                                case "Left":
                                    columnVal--;
                                    break;
                                
                                case "Up":
                                    lineVal--;
                                    break;

                                case "Bottom":
                                    lineVal++;
                                    break;

                                case "UpRight":
                                    lineVal--;
                                    columnVal++;
                                    break;

                                case "UpLeft":
                                    lineVal--;
                                    columnVal--;
                                    break;

                                case "BottomRight":
                                    lineVal++;
                                    columnVal++;
                                    break;

                                case "BottomLeft":
                                    lineVal++;
                                    columnVal--;
                                    break;

                                default:
                                    break;
                            }
                        }
                    }
                }
            }
        }

        for (List<Character> line : solvedPuzzleStr) {
            for (Character c : line) {

                strbld.append(Character.toUpperCase(c) + " ");
            }
            strbld.append("\n");
        }

        return strbld.toString();
    }

    @Override
    public String toString() {
        return "Word Soup\nOriginal File:\n" + this.fileLines + "\nPuzzle characters\n" + this.puzzleChar + "\nWords:\n"
                + this.words;
    }

}