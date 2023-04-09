// Alexandre Costa Martins 103552
public class DVD extends LibraryItem {
    private int duration;

    public DVD(int id, String title, boolean available, String borrower, int duration) {
        super(id, title, available, borrower);
        this.duration = duration;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "DVD{" +
                "id=" + getId() +
                ", title='" + getTitle() + '\'' +
                ", available=" + isAvailable() +
                ", borrower='" + getBorrower() + '\'' +
                ", duration=" + duration +
                '}';
    }

    public String getItemDetails() {
        return "DVD: " + getTitle();
    }
    

   
}