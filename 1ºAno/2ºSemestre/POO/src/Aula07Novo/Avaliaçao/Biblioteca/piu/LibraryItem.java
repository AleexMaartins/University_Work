package TesteSurpresa;

public abstract class LibraryItem {
    private int id;
    private static int idCounter = 0;
    private String title;
    private boolean isAvailable;
    private String requesterName;

    public LibraryItem(String title) {
        this.title = title;
        isAvailable = true;
        requesterName = null;
        id = idCounter++;
    }

    public boolean checkout(String name) {
        if (isAvailable) {
            isAvailable = false;
            requesterName = name;
            return true;
        }
        return false;
    }

    public boolean returnItem() {
        if (!isAvailable) {
            isAvailable = true;
            requesterName = null;
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return "LibraryItem{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", isAvailable=" + isAvailable +
                ", requesterName='" + requesterName + '\'' +
                '}';
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
        return isAvailable;
    }

    public void setAvailable(boolean available) {
        isAvailable = available;
    }

    public String getRequesterName() {
        return requesterName;
    }

    public void setRequesterName(String requesterName) {
        this.requesterName = requesterName;
    }
}
