import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Ex1 {
    public static void main(String[] args) {
        List<String> palavras = new ArrayList<>();

        String nomeArquivo = "words.txt";
        Map<String, Integer> contagemPalavras = new HashMap<>();

        try {
            palavras = Files.readAllLines(Paths.get(nomeArquivo));
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (String line : palavras) {
            String[] tmp = line.split("\\s+");
            for (String palavra : tmp) {
                if(palavra.length() == 0) continue;
                palavra = palavra.replaceAll("[^a-zA-Z]", " ");
                palavra = palavra.toLowerCase();
                if (contagemPalavras.containsKey(palavra)) {
                    contagemPalavras.put(palavra, contagemPalavras.get(palavra) + 1);
                } else {
                    contagemPalavras.put(palavra, 1);
                }
            }
        }

        int numeroTotalPalavras = 0;
        int numeroPalavrasDiferentes = contagemPalavras.size();

        for (Map.Entry<String, Integer> entry : contagemPalavras.entrySet()) {
            numeroTotalPalavras += entry.getValue();
        }

        System.out.println("Número Total de Palavras: " + numeroTotalPalavras);
        System.out.println("Número de Diferentes Palavras: " + numeroPalavrasDiferentes);
    }
}
