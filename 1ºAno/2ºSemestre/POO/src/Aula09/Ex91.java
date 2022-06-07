package Aula09;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

import Aula05.Date;

public class Ex91 {

    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i += 10) {
            c1.add(i);
        }
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++) {
            System.out.println("Elemento: " + c1.get(i));
        }

        ArrayList<String> c2 = new ArrayList<>();
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

        Set<Pessoa> c3 = new HashSet<>();
        c3.add(new Pessoa("Joao", 31011999, new Date(2, 11, 2002)));
        c3.add(new Pessoa("Pedro", 51231231, new Date(7, 5, 2002)));
        c3.add(new Pessoa("Jorge", 12351234, new Date(30, 6, 2002)));
        c3.add(new Pessoa("Maria", 51235123, new Date(21, 8, 2002)));
        c3.add(new Pessoa("Julieta", 12345121, new Date(14, 1, 2002)));
        for (Pessoa p : c3) {
            System.out.println(p);
        }

        Set<Date> c4 = new TreeSet<>();
        c4.add(new Date(2, 11, 2002));
        c4.add(new Date(7, 5, 2002));
        c4.add(new Date(30, 6, 2002));
        c4.add(new Date(21, 8, 2002));
        c4.add(new Date(14, 1, 2002));
        for (Date p : c4) {
            System.out.println(p);
        }
    }
}