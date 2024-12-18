import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


    public class Main {
        public static void main(String[] args) {
            List <String> names = new ArrayList<>();
            names.add("Paul");
            names.add("Laura");
            Iterator<String> v = names.iterator();
            System.out.println(v.next());
            v.remove();
            names.add("Kate");
            System.out.println(names);

        }
    }
