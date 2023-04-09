// Alexandre Costa Martins 103552 
public interface ILibrary {
    public void addItem(LibraryItem item);
    public void removeItem(LibraryItem item);
    public LibraryItem searchForItem(String searchTitle);
    public boolean borrowItem(int itemId, String borrowerName);
    public boolean returnItem(int itemId);
    public void printInventory();
}