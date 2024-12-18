package lab12.ex1;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class BubbleSortStrategy implements Strategy{

    @Override
    public void sort(List<MobilePhone> phones, Comparator<MobilePhone> comparator) {
    int n = phones.size();
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (comparator.compare(phones.get(j), phones.get(j + 1)) > 0) {
                Collections.swap(phones, j, j + 1);
            }
        }
    }
}
    
}
