package TesteSurpresa;

import java.util.Scanner;

public class LibraryMain {
    public static void main(String[] args) {
        ILibrary library = new Library();
        Scanner scanner = new Scanner(System.in);
        String choice = "";

        while (!choice.equals("7")) {
            System.out.println("Library Menu:");
            System.out.println("1. Add item");
            System.out.println("2. Remove item");
            System.out.println("3. Search for item");
            System.out.println("4. Borrow item");
            System.out.println("5. Return item");
            System.out.println("6. Print inventory");
            System.out.println("7. Exit");

            System.out.print("Enter choice: ");
            choice = scanner.nextLine();

            switch (choice) {
                case "1":
                    // adicionar um item
                    LibraryItem item = null;
                    System.out.print("Book or DVD: ");
                    String itemType = scanner.nextLine();
                    System.out.print("Item title: ");
                    String title = scanner.nextLine();
                    if (itemType.equalsIgnoreCase("book")) {
                        System.out.print("Author's name: ");
                        String author = scanner.nextLine();
                        item = new Book(title, author);
                    } else {
                        System.out.print("Dvd's duration: ");
                        int duration = scanner.nextInt();
                        item = new Dvd(title, duration);
                    }
                    System.out.println("item created " + item);
                    library.addItem(item);
                    break;
                case "2":
                    System.out.print("Item's title: ");
                    String itemTitle = scanner.nextLine();
                    library.removeItem(library.searchForItem(itemTitle));
                    break;
                case "3":
                    // procurar um item e imprimir as suas informações
                    System.out.print("Item's title: ");
                    String itemTitleE = scanner.nextLine();
                    System.out.println(library.searchForItem(itemTitleE));
                    break;
                case "4":
                    System.out.print("Item's id: ");
                    int itemId = scanner.nextInt();
                    library.borrowItem(itemId);
                    // emprestar um item, através do ID
                    break;
                case "5":
                    System.out.print("Item's id: ");
                    int itemIdd = scanner.nextInt();
                    library.returnItem(itemIdd);
                    // devolver um item, através do ID
                    break;
                case "6":
                    library.printInventory();
                    // imprimir o inventório da libraria
                case "7":
                    System.out.println("Exiting program.");
                    break;
                default:
                    // imprimir mensagem de erro
                    System.err.println("Bad choice.");
            }
        }
        scanner.close();
    }
}
