package lab12.ex3;
import java.util.Scanner;

public class Main {
    
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);

        Livro[] livros = new Livro[3];
        livros[0] = new Livro("Java Anti-Stress", "Omodionah");
        livros[1] = new Livro("A Guerra dos Padrões", "Jorge Omel");
        livros[2] = new Livro("A Procura da Luz", "Khumatkli");

        while (true) {
            printTitle();
            for (Livro livro : livros) {
                printLivroRow(livro);
            }
            printSuggestion();

            String input = scanner.nextLine();
            String[] parts = input.split(",");

            if (parts.length != 2) {
                System.out.println("Entrada inválida. Por favor, insira o número do livro e a operação, separados por uma vírgula.");
                continue;
            }

            int id = Integer.parseInt(parts[0].trim());
            int operation = Integer.parseInt(parts[1].trim());

            // Aqui você pode adicionar o código para executar a operação correspondente
            // Por exemplo:
            switch (operation) {
                case 1:
                    System.out.println("Registando o livro... " + id);
                    id--;
                    livros[id].regista();
                    break;
                case 2:
                    System.out.println("Requisitando o livro... " + id);
                    id--;
                    livros[id].requisita();
                    break;
                case 3:
                    System.out.println("Devolvendo o livro... " + id);
                    id--;
                    livros[id].devolve();
                    break;
                case 4:
                    System.out.println("Reservando o livro... " + id);
                    id--;
                    livros[id].reserva();
                    break;
                case 5:
                    System.out.println("Cancelando a reserva do livro... " + id);
                    id--;
                    livros[id].cancelaReserva();
                    break;
                default:
                    System.out.println("Operação inválida");
                    break;
            }
        }

        

    }

    public static void printLivroRow(Livro livro){
        String estado = livro.getEstadoAtual().getClass().getSimpleName();
        String titulo = livro.getTitulo();
        String autor = livro.getAutor();
        String id = Integer.toString(livro.getId());
        System.out.println(id + "\t" + titulo + "\t" + autor + "\t" + "["+ estado + "]");
    }
    
    public static void printSuggestion(){
        System.out.println(">> <livro>, <operação: (1)regista; (2)requisita; (3)devolve; (4)reserva; (5)cancela\n");
    }

    public static void printTitle(){
        System.out.println("*** Biblioteca ***");
    }
}
