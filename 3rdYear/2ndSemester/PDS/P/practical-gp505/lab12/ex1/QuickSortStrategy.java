package lab12.ex1;

import java.util.Comparator;
import java.util.List;

public class QuickSortStrategy implements Strategy {
    @Override
    public void sort(List<MobilePhone> phones, Comparator<MobilePhone> comparator) {
        phones.sort(comparator);
    }
}