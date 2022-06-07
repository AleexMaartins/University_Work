package Aula10;

import java.util.HashMap;
import java.util.Map;

public class Ex101 {
    public static void main(String[] args) {

        // creating a My HashTable Dictionary
        Map<String, String> mapa = new HashMap<>();

        mapa.put("Castanho", "cor de terra");
        mapa.put("Tomas", "cor da neve");
        mapa.put("Preto", "cor culturalmente associada a morte");
        mapa.put("Cor de rosa", "cor da flor rosa");
        mapa.put("Laranja", "cor da fruta laranja");
        mapa.put("Tijolo", "cor de tijolo");

        // using get() methodx
        mapa.remove("Tomas");
        for (Map.Entry<String, String> entry : mapa.entrySet()) {
            System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
            if (entry.getKey() == "Preto")
                mapa.replace("Preto", entry.getValue(), "cor de azeitona");

            if (entry.getKey() == "Cor de rosa")
                mapa.replace("Cor de rosa", entry.getValue(), "cor de ahmmm ahmmmm");

        }
        System.out.println("----------------------------------------------------------");

        for (Map.Entry<String, String> entry : mapa.entrySet()) {
            System.out.println("Nova lista");
            System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
        }
    }
    // using remove() method
    // remove value at key 10

}