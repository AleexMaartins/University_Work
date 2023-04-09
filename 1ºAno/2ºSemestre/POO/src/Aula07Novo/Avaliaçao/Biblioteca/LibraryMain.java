// Alexandre Costa Martins 103552
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
                    // Adicionar um item
                    System.out.println("Enter item type (book/dvd): ");
                    String itemType = scanner.nextLine();
                    System.out.println("Enter item ID: ");
                    int itemId = Integer.parseInt(scanner.nextLine());
                    System.out.println("Enter item title: ");
                    String itemTitle = scanner.nextLine();
                    System.out.println("Is item available? (true/false): ");
                    boolean itemAvailable = Boolean.parseBoolean(scanner.nextLine());
                    System.out.println("Enter borrower name (or 'none' if available): ");
                    String itemBorrower = scanner.nextLine();
                    if (itemType.equals("book")) {
                        System.out.println("Enter author name: ");
                        String bookAuthor = scanner.nextLine();
                        Book book = new Book(itemId, itemTitle, itemAvailable, itemBorrower, bookAuthor);
                        library.addItem(book);
                        System.out.println("Book added successfully.");
                    } else if (itemType.equals("dvd")) {
                        System.out.println("Enter runtime in minutes: ");
                        int dvdRuntime = Integer.parseInt(scanner.nextLine());
                        DVD dvd = new DVD(itemId, itemTitle, itemAvailable, itemBorrower, dvdRuntime);
                        library.addItem(dvd);
                        System.out.println("DVD added successfully.");
                    } else {
                        System.out.println("Invalid item type.");
                    }
                    break;
                case "2":
                    // Remover um item
                    System.out.println("Enter item title: ");
                    String searchTitle = scanner.nextLine();
                    LibraryItem removeItem = library.searchForItem(searchTitle);
                    if (removeItem != null) {
                        library.removeItem(removeItem);
                        System.out.println("Item removed successfully.");
                    } else {
                        System.out.println("Item not found.");
                    }
                    break;
                case "3":
                    // Procurar um item e imprimir suas informações
                    System.out.println("Enter item title: ");
                    String searchTitle2 = scanner.nextLine();
                    LibraryItem searchItem = library.searchForItem(searchTitle2);
                    if (searchItem != null) {
                        System.out.println(searchItem.toString());
                    } else {
                        System.out.println("Item not found.");
                    }
                    break;
                case "4":
                    // Emprestar um item, através do ID
                    System.out.println("Enter item ID: ");
                    int borrowItemId = Integer.parseInt(scanner.nextLine());
                    System.out.println("Enter borrower name: ");
                    String borrowerName = scanner.nextLine();
                    boolean borrowSuccess = library.borrowItem(borrowItemId, borrowerName);
                    if (borrowSuccess) {
                        System.out.println("Item borrowed successfully.");
                    } else {
                        System.out.println("Item not available or not found.");
                    }
                    break;
                    case "5":
                    // devolver um item, através do ID
                    System.out.print("Enter item ID to return: ");
                    int returnItemId = scanner.nextInt();
                    scanner.nextLine(); // consome a nova linha deixada pelo nextInt() / nao sei porque nao funciona sem isto, mas penso que seja um problema de memoria do java
                    
                    boolean returnSuccess = library.returnItem(returnItemId);
                    if (returnSuccess) {
                        System.out.println("Item successfully returned.");
                    } else {
                        System.out.println("Error: Item not found or already returned.");
                    }
                    break;
                    case "6":
                    // imprimir o inventório da biblioteca
                    library.printInventory();
                    break;
                    
                    case "7":
                    System.out.println("Exiting program.");
                    break;
                    
                    default:
                    System.out.println("Error: Invalid choice.");
                    }
        }
        scanner.close();
    }
}