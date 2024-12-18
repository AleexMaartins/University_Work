// Alexandre Costa Martins 103552
public class Book extends LibraryItem {
    private String author;

    public Book(int id, String title, boolean available, String borrower, String author) {
        super(id, title, available, borrower);
        this.author = author;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + getId() +
                ", title='" + getTitle() + '\'' +
                ", available=" + isAvailable() +
                ", borrower='" + getBorrower() + '\'' +
                ", author='" + author + '\'' +
                '}';
    }

    public String getItemDetails() {
        return "DVD: " + getTitle();
    }
}