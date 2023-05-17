package Aula10Novo;

import java.util.Scanner;

public class Ex1 {
    static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        boolean sair = false;
        do {
            System.out.println("Ações:");
            System.out.println(" 1- Inserir novo livro ");
            System.out.println(" 2- Alterar livro ");
            System.out.println(" 3- Remover livro ");
            System.out.println(" 4- Listar livros ");
            System.out.println(" 5- Procurar livro em particular ");
            System.out.println(" 6- Inserir novo genero literario ");
            System.out.println(" 7- Alterar genero literario ");
            System.out.println(" 8- Remover genero literario ");
            System.out.println(" 9- Listar generos literarios ");
            System.out.println(" 10- Sair ");
            System.out.print("Insira a opção: ");

            switch (input.nextInt()) {
                case 1:
                    System.out.print("Insira o titulo: ");
                    String tit = input.next();
                    System.out.print("Insira o autor: ");
                    String aut = input.next();
                    int ano = askForAYear();

                    Book book = new Book(tit, aut, ano);
                    book.setBook();
                    break;
                case 2:
                    System.out.print("Insira o titulo: ");
                    tit = input.next();
                    if (Book.checkMapForTit(tit)) {
                        System.out.println("Está agora a editar um livro. ");
                        System.out.print("Insira o  titulo: ");
                        tit = input.next();
                        System.out.print("Insira o  autor: ");
                        aut = input.next();
                        ano = askForAYear();

                        book = new Book(tit, aut, ano);
                        book.setBook();
                    }
                    else{
                        System.out.println("Não existe livro com este titulo.");
                    }
                    break;
                case 3:

                    break;
                case 4:
                    System.out.println(Book.getBooks());
                    break;
                case 5:

                    break;
                case 6:

                    break;
                case 7:

                    break;
                case 8:

                    break;
                case 9:

                    break;
                case 10:
                    sair = true;
                    break;

                default:
                    System.out.println("Opção inválida!");
                    break;
            }

        } while (!sair);
    }

    ////////////////////////// INT POSITIVO
    private static int askForAYear() {
        int nr = 0;
        boolean check = true;
        while (check) {
            try {
                System.out.print("Digite o ano de lançamento (A.C. é representado com datas negativas): ");
                nr = input.nextInt();
                check = false;
            } catch (Exception e) {
                System.out.println("____________________________");
                System.out.println("Valor digitado nao inteiro!!");
                System.out.println("____________________________");
                input.nextLine();
            }
        }
        return nr;
    }
}
