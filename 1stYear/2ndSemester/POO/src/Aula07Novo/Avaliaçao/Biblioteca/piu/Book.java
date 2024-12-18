package TesteSurpresa;

import java.util.Objects;

public class Book extends LibraryItem {
    private String autor;

    public Book(String title, String autor) {
        super(title);
        this.autor = autor;
    }

    @Override
    public String toString() {
        return super.toString() + "Book{" +
                "autor='" + autor + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return Objects.equals(autor, book.autor);
    }

    @Override
    public int hashCode() {
        return Objects.hash(autor);
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
}
