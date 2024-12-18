package lab12.ex1;

import java.util.Comparator;
import java.util.List;

public interface Strategy {

    void sort(List<MobilePhone> phones, Comparator<MobilePhone> comparator);

    
}
