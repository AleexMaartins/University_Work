package Aula09;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.TreeSet;

class Performance {
    public double add;
    public double search;
    public double remove;
}

public class Ex92 {
    public static void main(String[] args) {
        int DIMS[] = { 1000, 5000, 10000, 20000, 40000, 100000 };
        String operations[] = { "add", "search", "remove" };
        String names[] = { "ArrayList", "LinkedList", "HashSet", "TreeSet" };
        double resultPerformances[][][] = new double[4][DIMS.length][3];
        Collection<Collection<Integer>> collections = new ArrayList<>();
        collections.add(new ArrayList<>());
        collections.add(new LinkedList<>());
        collections.add(new HashSet<>());
        collections.add(new TreeSet<>());

        int colIndex = 0;
        for (Collection<Integer> col : collections) {
            for (int j = 0; j < DIMS.length; j++) {
                resultPerformances[colIndex][j] = getPerformance(col, DIMS[j]);
                System.out.printf(".");
            }
            System.out.printf("\n");
            colIndex++;
        }
        System.out.printf("\n\n");

        System.out.printf("%-20s", "Collection");
        for (int i = 0; i < DIMS.length; i++) {
            System.out.printf("%10d", DIMS[i]);
        }
        System.out.printf("\n");

        for (int i = 0; i < names.length; i++) {
            System.out.println(names[i]);
            for (int op = 0; op < operations.length; op++) {
                System.out.printf("%-20s", operations[op]);
                for (int j = 0; j < DIMS.length; j++) {
                    System.out.printf("%10.1f", resultPerformances[i][j][op]);
                }
                System.out.printf("\n");
            }
        }
    }

    private static double[] getPerformance(Collection<Integer> col, int DIM) {
        double performances[] = {
                getAddPerformance(col, DIM),
                getSearchPerformance(col, DIM),
                getRemovePerformance(col, DIM)
        };
        return performances;
    }

    public static double getAddPerformance(Collection<Integer> col, int DIM) {
        double start, stop;

        start = System.nanoTime(); // clock snapshot before
        for (int i = 0; i < DIM; i++)
            col.add(i);
        stop = System.nanoTime(); // clock snapshot after
        return (stop - start) / 1e6; // convert to milliseconds
    }

    public static double getSearchPerformance(Collection<Integer> col, int DIM) {
        double start, stop;

        start = System.nanoTime(); // clock snapshot before
        for (int i = 0; i < DIM; i++) {
            int n = (int) (Math.random() * DIM);
            if (!col.contains(n))
                System.out.println("Not found???" + n);
        }
        stop = System.nanoTime(); // clock snapshot after
        return (stop - start) / 1e6; // convert nanoseconds to milliseconds
    }

    public static double getRemovePerformance(Collection<Integer> col, int DIM) {
        double start, stop;

        start = System.nanoTime(); // clock snapshot before
        Iterator<Integer> iterator = col.iterator();
        while (iterator.hasNext()) {
            iterator.next();
            iterator.remove();
        }
        stop = System.nanoTime(); // clock snapshot after
        return (stop - start) / 1e6; // convert nanoseconds to milliseconds
    }
}