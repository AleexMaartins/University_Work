package lab09.ex3;

import java.util.HashMap;
import lab09.ex3.startypes.*;

public class StarFactory {
    private HashMap<Character, StarType> stars = new HashMap<>();

    public StarType getStar(char type, int x, int y) {
        StarType star = stars.get(type);

        if (star == null) {
            switch (type) {
                case 'O':
                    star = new OStar(x, y);
                    break;
                case 'A':
                    star = new AStar(x, y);
                    break;
                case 'B':
                    star = new BStar(x, y);
                    break;
                case 'F':
                    star = new FStar(x, y);
                    break;
                case 'G':
                    star = new GStar(x, y);
                    break;
                case 'K':
                    star = new KStar(x, y);
                    break;
                case 'M':
                    star = new MStar(x, y);
                    break;
            }
            stars.put(type, star);
        }

        return star;
    }
}