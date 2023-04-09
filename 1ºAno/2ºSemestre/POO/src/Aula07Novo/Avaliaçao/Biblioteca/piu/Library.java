package TesteSurpresa;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Library implements ILibrary {
    List<LibraryItem> items = new ArrayList<>();

    @Override
    public void addItem(LibraryItem item) {
        items.add(item);
    }

    @Override
    public void removeItem(LibraryItem item) {
        if (item != null) {
            items.remove(item);
        }
    }

    @Override
    public LibraryItem searchForItem(String title) {
        /* returns item if exists, else null */
        return items.stream().filter(x -> x.getTitle().equals(title)).findFirst().orElse(null);
    }

    @Override
    public boolean borrowItem(int itemId) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Borrower's name: ");
        String name = sc.nextLine();
        for (LibraryItem item : items) {
            if (item.getId() == itemId) {
                return item.checkout(name);
            }
        }
        return false;
    }

    @Override
    public boolean returnItem(int itemId) {
        for (LibraryItem item : items) {
            if (item.getId() == itemId) {
                return item.returnItem();
            }
        }
        return false;
    }

    @Override
    public void printInventory() {
        items.forEach(System.out::println);
    }
}
