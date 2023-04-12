package testes;

public class testes {
    public static void main(String[] args) {
        System.out.println();
        String s1 = "1"; // returns false
        String s2 = "12";// returns true
        String s3 = "123";// returns true
        String s4 = "1234";// returns true
        String s5 = "12345";// returns false
        // System.out.println(s5.matches("\\d{2,4}")); //tamanho da string entre 2 e 4,
        // \\d verifica se é composto por apenas numeros de 0-9
        int vec[] = new int[10];

        // System.out.println(vec.length); //10
        // System.out.println(vec[9]); //0, nono item no array

        for (int i = 0; i < 0; i++) {
            // System.out.println("corre uma vez"); // nem sempre corre uma vez
        }

        String[] vecu = { Aveiro, 22, Abril, 2020 }; //invalido
        String[] vecu2 = { "Aveiro", "22", "Abril", "2020" }; //valido
        System.out.println(vecu); 

    }
}