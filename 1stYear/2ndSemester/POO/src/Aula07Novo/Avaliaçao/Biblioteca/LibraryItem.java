// Alexandre Costa Martins 103552
public abstract class LibraryItem {
    private int id;
    private String title;
    private boolean available;
    private String borrower;

    
    public LibraryItem(int id, String title, boolean available, String borrower) {
        this.id = id;
        this.title = title;
        this.available = available;
        this.borrower = borrower;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public String getBorrower() {
        return borrower;
    }

    public void setBorrower(String borrower) {
        this.borrower = borrower;
    }

    public void checkout(String borrower) {
        if (this.available) {
            this.available = false;
            this.borrower = borrower;
            System.out.println("Item " + this.title + " checked out to " + borrower);
        } else {
            System.out.println("Item " + this.title + " not available.");
        }
    }

    public void returnItem() {
        if (!this.available) {
            this.available = true;
            this.borrower = "";
            System.out.println("Item " + this.title + " returned.");
        } else {
            System.out.println("Item " + this.title + " not checked out.");
        }
    }

    @Override
    public String toString() {
        return "LibraryItem{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", available=" + available +
                ", borrower='" + borrower + '\'' +
                '}';
    }
}