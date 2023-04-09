package TesteSurpresa;

import java.util.Objects;

public class Dvd extends LibraryItem {
    private int duration;

    public Dvd(String title, int duration) {
        super(title);
        this.duration = duration;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Dvd dvd = (Dvd) o;
        return duration == dvd.duration;
    }

    @Override
    public int hashCode() {
        return Objects.hash(duration);
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return super.toString() + "Dvd{" +
                "duration=" + duration +
                '}';
    }
}
