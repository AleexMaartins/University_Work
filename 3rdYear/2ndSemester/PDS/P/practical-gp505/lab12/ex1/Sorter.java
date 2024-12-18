package lab12.ex1;

import java.util.Comparator;
import java.util.List;

public class Sorter {
    private Strategy strategy;

    public void setStrategy(Strategy strategy) {
        this.strategy = strategy;
    }

    public void sort(List<MobilePhone> phones, Comparator<MobilePhone> comparator) {
        if (strategy != null) {
            strategy.sort(phones, comparator);
        } else {
            throw new IllegalStateException("Sorting strategy not set");
        }
    }
}
