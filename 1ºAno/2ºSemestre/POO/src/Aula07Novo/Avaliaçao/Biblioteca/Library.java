// Alexandre Costa Martins 103552
import java.util.HashMap;
import java.util.Map;

public class Library implements ILibrary {
    private Map<Integer, LibraryItem> items;
    private int nextItemId;

    public Library() {
        this.items = new HashMap<>();
        this.nextItemId = 1;
    }

    @Override
    public void addItem(LibraryItem item) {
        item.setId(nextItemId++);
        items.put(item.getId(), item);
        System.out.println("Item added: " + item);
    }

    @Override
    public void removeItem(LibraryItem item) {
        if (items.containsValue(item)) {
            items.remove(item.getId());
            System.out.println("Item removed: " + item);
        } else {
            System.out.println("Item not found.");
        }
    }

    @Override
    public LibraryItem searchForItem(String title) {
        for (LibraryItem item : items.values()) {
            if (item.getTitle().equals(title)) {
                System.out.println("Item found: " + item);
                return item;
            }
        }
        System.out.println("Item not found.");
        return null;
    }

    @Override
    public boolean borrowItem(int itemId, String borrowerName) {
        LibraryItem item = items.get(itemId);
        if (item == null) {
            System.out.println("Item not found.");
            return false;
        }
        if (!item.isAvailable()) {
            System.out.println("Item not available.");
            return false;
        }
        item.checkout(borrowerName);
        System.out.println("Item borrowed: " + item);
        return true;
    }

    @Override
    public boolean returnItem(int itemId) {
        LibraryItem item = items.get(itemId);
        if (item == null) {
            System.out.println("Item not found.");
            return false;
        }
        if (item.isAvailable()) {
            System.out.println("Item already returned.");
            return false;
        }
        item.returnItem();
        System.out.println("Item returned: " + item);
        return true;
    }

    @Override
    public void printInventory() {
        System.out.println("Library inventory:");
        for (LibraryItem item : items.values()) {
            System.out.println(item);
        }
    }
}