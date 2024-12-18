import java.util.ArrayList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import Aula06Novo.Ex1DateYMD;
import Aula06Novo.Ex1Pessoa;

public class Ex1 {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i += 10)
            c1.add(i);
        System.out.println("Size: " + c1.size());
        
        for (int i = 0; i < c1.size(); i++)
            System.out.println("Elemento: " + c1.get(i));
        ArrayList<String> c2 = new ArrayList<>();

        for (int i = 0; i < c1.size(); i++)
            System.out.println("Elemento: " + c1.get(i));
        Set<Ex1Pessoa> c3 = new HashSet<>();
        Ex1Pessoa p = new Ex1Pessoa("Joao", 20, new Ex1DateYMD(1, 1, 2000));

        c3.add(p);
        c3.add(new Ex1Pessoa("Maria", 25, new Ex1DateYMD(1, 1, 2000)));
        c3.add(new Ex1Pessoa("David", 23, new Ex1DateYMD(1, 1, 2000)));
        System.out.println(c3);
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio");
        c2.remove(0);
        System.out.println(c2);
        System.out.println(c2.contains("Vento"));
        System.out.println(c2.contains("Frio"));
        System.out.println(c2.indexOf("Vento"));
        System.out.println(c2.indexOf("Frio"));
        System.out.println(c2.size());
        System.out.println(c2.isEmpty());
        c2.clear();
        System.out.println(c2.isEmpty());
        System.out.println(c2.size());
        System.out.println(c3.size());
        c3.remove(p);
        System.out.println(c3.size());
        System.out.println(c3);
    }
}
