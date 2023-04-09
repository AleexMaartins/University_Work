package Aula06Novo;
import java.util.Arrays;

public class Ex3 {
    private int[] elementos;
    private int tamanho;

    public Ex3() {
        elementos = new int[10];
        tamanho = 0;
    }

    public void insert(int n) {
        if (tamanho == elementos.length) {
            elementos = Arrays.copyOf(elementos, elementos.length * 2);
        }
        if (!contains(n)) {
            elementos[tamanho] = n;
            tamanho++;
        }
    }

    public boolean contains(int n) {
        for (int i = 0; i < tamanho; i++) {
            if (elementos[i] == n) {
                return true;
            }
        }
        return false;
    }

    public void remove(int n) {
        for (int i = 0; i < tamanho; i++) {
            if (elementos[i] == n) {
                for (int j = i + 1; j < tamanho; j++) {
                    elementos[j - 1] = elementos[j];
                }
                tamanho--;
                break;
            }
        }
    }

    public void empty() {
        elementos = new int[10];
        tamanho = 0;
    }

    public String toString() {
        String result = "{";
        for (int i = 0; i < tamanho; i++) {
            result += elementos[i];
            if (i < tamanho - 1) {
                result += ", ";
            }
        }
        result += "}";
        return result;
    }

    public int size() {
        return tamanho;
    }

    public Ex3 combine(Ex3 add) {
        Ex3 novo = new Ex3();
        for (int i = 0; i < tamanho; i++) {
            novo.insert(elementos[i]);
        }
        for (int i = 0; i < add.tamanho; i++) {
            novo.insert(add.elementos[i]);
        }
        return novo;
    }

    public Ex3 subtract(Ex3 dif) {
        Ex3 novo = new Ex3();
        for (int i = 0; i < tamanho; i++) {
            if (!dif.contains(elementos[i])) {
                novo.insert(elementos[i]);
            }
        }
        return novo;
    }

    public Ex3 intersect(Ex3 inter) {
        Ex3 novo = new Ex3();
        for (int i = 0; i < tamanho; i++) {
            if (inter.contains(elementos[i])) {
                novo.insert(elementos[i]);
            }
        }
        return novo;
    }

    public static void main(String[] args) { 
        Ex3 c1 = new Ex3(); 
        c1.insert(4); c1.insert(7); c1.insert(6); c1.insert(5); 
       
        Ex3 c2 = new Ex3(); 
        int[] test = { 7, 3, 2, 5, 4, 6, 7}; 
        for (int el : test) c2.insert(el); 
        c2.remove(3);  c2.remove(5); c2.remove(6); 
       
        System.out.println(c1); 
        System.out.println(c2); 
           
        System.out.println("Número de elementos em c1: " + c1.size()); 
        System.out.println("Número de elementos em c2: " + c2.size()); 
        System.out.println("c1 contém 6?: " + ((c1.contains(6) ? "sim" : "não"))); 
        System.out.println("c2 contém 6?: " + ((c2.contains(6) ? "sim" : "não"))); 
           
        System.out.println("União:" + c1.combine(c2));     
        System.out.println("Interseção:" + c1.intersect(c2));     
        System.out.println("Diferença:" + c1.subtract(c2)); 
           
        c1.empty();  
        System.out.println("c1:" + c1); 
         
}
}