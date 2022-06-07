
package Aula10;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class Ex102 {
    public static void main(String[] args) {

        Map<String, HashSet<String>> map = new HashMap<>();

        HashSet<String> a = new HashSet<>();
        a.add("motor");
        a.add("exaustor");
        a.add("transmissão");

        map.put("Carro", a);

        HashSet<String> h1 = new HashSet<>();
        h1.add("folhas");
        h1.add("tronco");
        h1.add("raiz");

        map.put("Arvore", h1);

        HashSet<String> h2 = new HashSet<>();
        h2.add("janela");
        h2.add("porta");
        h2.add("telhado");

        map.put("Casa", h2);

        HashSet<String> h3 = new HashSet<>();
        h3.add("peixes");
        h3.add("algas");
        h3.add("areia");

        map.put("oceano", h3);

        h3.remove("areia");
        h3.add("tubaroes");
        map.put("oceano", h3);

        map.remove("Casa");

        for (Map.Entry<String, HashSet<String>> b : map.entrySet()) {
            System.out.println(b.getKey() + ": " + b.getValue() + " :)");
        }

        for (Map.Entry<String, HashSet<String>> b : map.entrySet()) {
            System.out.println(b.getKey() + " :)");
        }

        for (Map.Entry<String, HashSet<String>> b : map.entrySet()) {
            System.out.println(b.getValue() + " :)");
        }

        int var = (int) (Math.random() * 3);
        int v = (int) (Math.random() * 3);
        System.out.println(var);
        System.out.println(v);

        int i = 0;
        HashMap<Integer, HashSet<String>> p = new HashMap<>();
        for (Map.Entry<String, HashSet<String>> b : map.entrySet()) {
            p.put(i, b.getValue());
            i++;
        }

        System.out.println(p.get(var));
        HashSet<String> s = p.get(var);
        i = 0;
        HashMap<Integer, String> l = new HashMap<>();
        for (String b : s) {
            l.put(i, b);
            i++;
        }
        System.out.println(l.get(v));
    }
}